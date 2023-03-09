function [Kc, Ti, Td, lambda] = function_ZNFOPID(mu, r2, Ku, Tu, m, n)
%function_ZNPID_mu 用于计算ZN-PI^lambda D^mu 控制器的三个参数
%控制器形式：C(s) = Kp(1 + 1/(Ti*s^lambda) + Td*s^mu)
%   mu  微分阶次    lambda = r2 * mu
%   Ku  临界振荡增益  Tu  临界振荡周期
%   m   约束点横坐标绝对值   n   约束点纵坐标绝对值
%   date: 2023/3/9
r1 = 4;
lambda = mu * r2;
B  = r1^(lambda);
b  = n / m;
C1 = cos(lambda*pi/2);             S1 = sin(lambda*pi/2);
C2 = cos(mu*pi/2);                 S2 = sin(mu*pi/2);
alpha = B * (b*C2 - S2);
beta  = B * b;
gamma = b * C1 + S1;
syms x;
equ = alpha*x^(1+r2) + beta*x^r2 + gamma;
x = double(vpasolve(equ, x));
num_solu = 0;
for num = 1:1:length(x)
    if (imag(x(num)) == 0) && (real(x(num))>0)
        num_solu = num_solu + 1;
        solu(num_solu) = x(num);
    end  
end
if num_solu > 1
    error('More than one solution !');
elseif num_solu == 0 
    error('No soluation !');
end
X = solu(1);

kp = (m / (1+C1/(B*X^r2)+C2*X));
ki = ((2 * power(X,1/mu)/pi)^lambda);
kd = (X / ((2*pi)^mu));

Kc = kp * Ku;
Ti = ki * Tu^lambda;
Td = kd * Tu^mu;

end

