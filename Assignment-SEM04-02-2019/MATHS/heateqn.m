function [u] = heateqn(x0, xn, t0, tn, h, k, c)
%HEATEQN Solves the heat equation numerically using finite difference
%   Params:
%           x0 <= x <= xn
%           t0 <= t <= tn
%           c: heat equation param
%           h, t: precision along x and y axis
%
%   Author : Satyajit Ghana

x = x0:h:xn;
t = t0:k:tn;
m = length(x);n = length(t);

u = zeros(m, n);
% a = k*(c/h)^2;
a = c*k/h^2;

f = @(x) 4.*x - 0.5.*(x.^2);
u(:, 1) = f(x);

if a > 0.5
    fprintf('Method fails\n');
    return
end

for j = 1:n-1
    for i = 2:m-1
        u(i, j+1) = a * (u(i+1, j) + u(i-1, j)) + (1-2*a) * u(i, j);
    end
end

% [X, T] = meshgrid(x, t);
surf(t, x, u);
xlabel('t');
ylabel('x');
zlabel('u');

end