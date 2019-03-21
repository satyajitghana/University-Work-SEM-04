function [x, y] = rk4order(x0, y0, xn, h, f)
%RK4ORDER Runge-Kutta 4th-Order Approximation
%   The Runge-Kutta method finds approximate value of y for a given x.
% Only first order ordinary differential equations can be solved by using 
% the Runge Kutta 4th order method.
% Params:
% x0 = x(0)
% y0 = y(0)
% xn = x at which value of y is to be approximated
% h = step length
% f = slope as a function of x and y

    x = x0:h:xn;
    n = length(x);
    y(1) = y0;

    for i = 1:n-1
        k1 = h * f(x(i), y(i));
        k2 = h * f(x(i)+h/2, y(i)+k1/2);
        k3 = h * f(x(i)+h/2, y(i)+k2/2);
        k4 = h * f(x(i)+h, y(i)+k3);

        y(i+1) = y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    end
end

