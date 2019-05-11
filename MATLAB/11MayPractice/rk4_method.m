function [x, y] = rk4_method(x0, xn, y0, h, f)
%% RK4_METHOD *Euler's Method*
% **
%% $$\begin{array}{l}y_{n+1} =y_n +\frac{1}{6}\left(k_1 +2k_2 +2k_3 +k_4 \right)\\k_1 =h\cdot f\left(x_n ,y_n \right)\\k_2 =h\cdot f\left(x_n +\frac{h}{2},y_n +\frac{k_1 }{2}\right)\\k_3 =h\cdot f\left(x_n +\frac{h}{2},y_n +\frac{k_2 }{2}\right)\\k_4 =h\cdot f\left(x_n +h,y_n +k_3 \right)\end{array}$$
% 
x = x0:h:xn;
y(1) = y0;
for n = 1:length(x)-1
    k1 = h * f(x(n), y(n));
    k2 = h * f(x(n)+h/2, y(n)+k1/2);
    k3 = h * f(x(n)+h/2, y(n)+k2/2);
    k4 = h * f(x(n)+h, y(n)+k3);
    y(n+1) = y(n) + (1/6)*(k1+2*k2+2*k3+k4);
end
plot(x, y, '*-');
legend('f(x)');
title('Ruge Kutta''s Method');
end