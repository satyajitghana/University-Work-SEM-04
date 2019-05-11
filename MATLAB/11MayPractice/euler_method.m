function [x, y] = euler_method(x0, xn, y0, h, f)
%% EULER_METHOD *Euler's Method*
% **
%% $$y_{n+1} =y_n +h\cdot \;f\left(x_n ,y_n \right)$$
% 
x = x0:h:xn;
y(1) = y0;
for n = 1:length(x)-1
    y(n+1) = y(n) + h * f(x(n), y(n));
end
plot(x, y, '*-');
legend('f(x)');
title('Euler''s Method');
end