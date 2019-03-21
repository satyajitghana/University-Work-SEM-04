clear all

f = @(x, y) x + y;

h = 0.01;
x = 0:h:10;
y(1) = 1;

for i = 2:length(x)
    y(i) = y(i-1)+h*f(x(i-1), y(i-1));
end

plot(x, y)

grid on;

clear all

f = @(x, y) x + y;

h = 0.01;
x = 0:h:10;
y(1) = 1;

for i = 2:length(x)
    y(i) = y(i-1)+h*f(x(i-1), y(i-1));
end

plot(x, y)

grid on;