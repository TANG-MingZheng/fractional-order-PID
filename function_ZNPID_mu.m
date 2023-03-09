function [Kc, Ti, Td] = function_ZNPID_mu(mu, Ku, Tu, m, n)
%function_ZNPID_mu 用于计算ZN-PID^mu 控制器的三个参数
%控制器形式：C(s) = Kp(1 + 1/(Ti*s) + Td*s^mu)
%   mu  分数阶阶次
%   Ku  临界振荡增益  Tu  临界振荡周期
%   m   约束点横坐标绝对值   n   约束点纵坐标绝对值
%   date: 2023/3/9
C1 = cos(mu*pi/2);
S1 = sin(mu*pi/2);
a = (4 * (n*C1 - m*S1) );
b = (4 * n);
c = (m);
syms x;
equ = a*x^(1+mu) + b*x + c;
xv = double(vpasolve(equ, x));
if length(xv) == 1
    X = xv;
elseif length(xv) > 1
    X = max(xv);
else
    error('No soluation !');
end

kp = m / (1+C1*X^mu);
ki = (2*X) / pi;
kd = ( X/(2*pi) )^mu;

Kc = kp * Ku;
Ti = ki * Tu;
Td = kd * Tu^mu;
end

