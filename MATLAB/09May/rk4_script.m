%% *Runge-Kutta 4th Order*
%% $$\begin{array}{l}y_{n+1} =y_n +\frac{1}{6}\left(k_1 +2k_2 +2k_3 +k_4 \right)\\k_1 =h\cdot f\left(x_n ,y_n \right)\\k_2 =h\cdot f\left(x_n +\frac{h}{2},y_{n\;} +\frac{k_1 }{2}\right)\\k_3 =h\cdot f\left(x_n +\frac{h}{2\;},y_{n\;} +\frac{k_2 }{2}\right)\\k_4 =h\cdot f\left(x_n +h,y_n +k_3 \right)\end{array}$$
% 

clear all;
format long;

% params
f = @(x, y) 3*(x^2)*exp(x)-y;
y(1) = 1;
xn = 5;
x0 = 0;
h = 0.2;

% function
x = x0:h:xn;

for n = 1:length(x)-1
    k1 = h * f(x(n), y(n));
    k2 = h * f(x(n)+h/2, y(n)+k1/2);
    k3 = h * f(x(n)+h/2, y(n)+k2/2);
    k4 = h * f(x(n)+h, y(n)+k3);
    y(n+1) = y(n) + (1/6)*(k1 + 2*k2 + 2*k3 +k4);
    fprintf('Approximate value of y(%f) = %f\n', x(n+1), y(n+1))
end
plot(x, y, '*-', 'LineWidth', 1.3);
hold on;
soln = dsolve('Dy = 3*(x^2)*exp(x)-y', 'y(0)=1', 'x')
xt = x0:0.01:xn;
yt = subs(soln, xt);
plot(xt, yt, 'LineWidth', 1.3);
hold off;
legend('Approx Solution', 'Actual Solution')