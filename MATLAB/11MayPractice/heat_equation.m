function u = heat_equation(x0, xn, t0, tn, h, k, c, f)
%% HEAT_EQUATION *Heat Equation using Finite Difference Method*
% **
%% $$\begin{array}{l}c^2 \frac{\partial^2 u\;}{\partial x^2 }=\frac{\;\partial u}{\partial t}\;\\\\u_{i,j+1} =a\cdot u_{i+1,j} +\left(1-2a\right)\cdot u_{i,j} +a\cdot u_{i-1,j} \\a=\frac{{k\;c}^2 }{h^2 }\end{array}$$
% 
x = x0:h:xn;
t = t0:k:tn;
u = zeros(length(x), length(t));
u(:, 1) = f(x);
a = k * c^2 / h^2;
if a > 0.5
    fprintf('Method Fails');
    return
end
for j = 1:length(t)-1
    for i = 2:length(x)-1
        u(i, j+1) = a * u(i+1, j) + (1-2*a)*u(i, j) + a * u(i-1, j);
    end
end
figure
surf(t, x, u);
xlabel('x');
ylabel('t');
zlabel('u');
title('Heat Equation');
figure
for j = 1:length(t)
    plot(x, u(:, j));
    hold on;
end
hold off;
end