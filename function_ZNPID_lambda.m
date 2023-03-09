function [Kc, Ti, Td] = function_ZNPID_lambda(lambda, Ku, Tu, m, n)
%function_ZNPID_mu 用于计算 ZN-PI^lambda D^lambda 控制器的三个参数
%控制器形式：C(s) = Kp(1 + 1/(Ti*s^lambda) + Td*s^lambda)
%   lambda  分数阶阶次
%   Ku  临界振荡增益  Tu  临界振荡周期
%   m   约束点横坐标绝对值   n   约束点纵坐标绝对值
%   date: 2023/3/9
B = (4^lambda);
C2 = cos(lambda*pi/2);
S2 = sin(lambda*pi/2);
a = (B * (n*C2-m*S2));
b = (B * n);
c = (n*C2 + m*S2);
Delta = b^2 - 4*a*c;
if Delta >= 0
    X1 = (-b+sqrt(Delta)) / (2*a);
    X2 = (-b-sqrt(Delta)) / (2*a);
    X = max(X1, X2);
    if X < 0
        error('No soluation !');
    end
else
    error('No soluation !');
end
    
kp = m / (1 + C2/(B*X) + C2*X);
ki = X * (2/pi)^lambda;
kd =  X / ((2*pi)^lambda );

Kc = kp * Ku;
Ti = ki * Tu^lambda;
Td = kd * Tu^lambda;
end

