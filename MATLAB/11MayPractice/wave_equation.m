function u = wave_equation(x0, xn, t0, tn, h, k, c, f, g)
%% WAVE_EQUATION *Wave Equation using Explicit Method*
% **
%% $$\begin{array}{l}c^2 \frac{\partial^2 u\;}{\partial x^2 }=\frac{\;\partial^2 u}{\partial^2 t}\;\\u_{i,\;2} =\left(1-L\right)u_{i,1} +\frac{1}{2}L\left(u_{i+1,1} +u_{i-1,1} \right)+k\;g\left(x_i \right)\\u_{i,j+1} =2\left(1-L\right)u_{i,j} +L\left(u_{i+1,j} +u_{i-1,j} \right)-u_{i,j-1} \\L=\frac{k^2 \;c^2 }{h^2 }\end{array}$$
% 
x = x0:h:xn;
t = t0:k:tn;
u = zeros(length(x), length(t));
u(:, 1) = f(x);
L = k^2 * c^2 / h^2;
for i = 2:length(x)-1
    u(i, 2) = (1-L)*u(i, 1) + (1/2)*L*(u(i+1, 1) + u(i-1, 1)) + k * g(x(i));
end
for j = 2:length(t)-1
    for i = 2:length(x)-1
        u(i, j+1) = 2*(1-L)*u(i, j) + L*(u(i+1, j) + u(i-1, j)) - u(i, j-1);
    end
end
figure
surf(t, x, u);
xlabel('x');
ylabel('t');
zlabel('u');
title('Wave Equation');
end