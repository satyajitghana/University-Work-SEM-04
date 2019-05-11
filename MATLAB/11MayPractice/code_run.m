%% Euler Method

y0 = 1;
x0 = 0;
xn = 0.8;
h = 0.2;
f = @(x, y) cos(x) + sin(x);

[x, y] = euler_method(x0, xn, y0, h, f);
x
y
%% Runge Kutta 4th Order
%%
y0 = 1;
x0 = 0;
xn = 5;
h = 0.2;
f = @(x, y) 3*x^2*exp(x)-y;

[x, y] = rk4_method(x0, xn, y0, h, f);
x
y
%% Heat Equation
%%
c = sqrt(1/20);
x0 = 0;
xn = 3;
t0 = 0;
tn = 0.5;
h = 0.1;
k = 0.1;
f = @(x) 2 * (1+sin(pi*x));

u = heat_equation(x0, xn, t0, tn, h, k, c, f);
u
%%
c = sqrt(1);
x0 = 0;
xn = 1;
t0 = 0;
tn = 1;
h = 1/8;
k = 1/9;
f = @(x) x.*(1-x);
g = @(x) 0;

u = wave_equation(x0, xn, t0, tn, h, k, c, f, g);
u
%% Inbuilt Functions
%%
f = @(t, y) y + t^2-1;
y0 = 7;
tspan = [1 7];
[t, y] = ode45(f, tspan, y0);

plot(t, y, '*-');
hold on;
ysoln = dsolve('Dy = y + t^2 - 1', 'y(1)=7', 't');
x = 1:0.1:7;
yt = subs(ysoln, x);
yt = vpa(yt, 10);
xt = x;
plot(xt, yt);
hold off;
legend('ODE45', 'DSOLVE', 'Location', 'best');
%%
tspan = 0:0.2:1;
y0 = [1, 0];
f = @(t, y) [y(2); t^2*y(2) + 2*t*y(1) + 1];
[t, y] = ode45(f, tspan, y0);
for i = 1:length(tspan)
    fprintf('y(%f) = %f\n', t(i), y(i, 1));
end
plot(t, y(:,1), '*-');
plot(t, y(:,2), '*-');
plot(t, y, '*-');
%%
for i = 1:length(tspan)
    fprintf('y(%f) = %f\n', t(i), y(i, 2));
end
plot(t, y(:,2), '*-');
for i = 1:length(tspan)
    fprintf('y(%f) = %f\n', t(i), y(i, 1));
end
plot(t, y(:,1), '*-');