%% Heat Equation using Finite Difference Method
%% $$u_{i,j+1} =a\cdot u_{i+1,\;j} +\left(1-2a\right)u_{i,j} +a\cdot u_{i-1,j}$$

clear all;

% params
f = @(x) x .* (4-x);

c_sq = 1/2;

h = 1;
k = 1;

tn = 3;
xn = 4;

% function

x = 0:h:xn;
t = 0:k:tn;

% a = k * c_sq / h^2;
a = 0.5;

u = zeros(length(x), length(t));
u(:, 1) = f(x);

for j = 1:length(t)-1
    for i = 2:length(x)-1
        u(i, j+1) = a * u(i+1, j) + (1-2*a) * u(i, j) + a * u(i-1, j);
    end
end

for j = 1:length(t)
    for i = 1:length(x)
        fprintf('value at u(%d, %d) is %f\n', i-1, j-1, u(i, j));
    end
    fprintf('\n');
end
disp(u)
surf(t, x, u);
xlabel('x');
ylabel('t');
zlabel('u');
for j = 1:length(t)
    plot(x, u(:, j));
    hold on;
end
hold off;