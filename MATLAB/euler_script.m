%% *Euler Method*
%% $$y_{n+1} =y_n +h\cdot f\left(x_n ,y_n \right)$$

clear all;
format long;

% params
f = @(x, y) cos(x) + sin(x);
y(1) = 1;
xn = 0.8;
x0 = 0;
h = 0.2;

% function
x = x0:h:xn;

for n = 1:length(x)-1
    y(n+1) = y(n) + h * f(x(n), y(n));
    fprintf('Approximate value of y(%f) = %f\n', x(n+1), y(n+1))
end

x
y
plot(x, y, '*-', 'LineWidth', 1.3);
hold on;
soln = dsolve('Dy = cos(x) + sin(x)', 'y(0)=1', 'x')
xt = x0:0.01:xn;
yt = subs(soln, xt);
plot(xt, yt, 'LineWidth', 1.3);
hold off;
legend('Approx Solution', 'Actual Solution')
%%