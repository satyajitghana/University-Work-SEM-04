f = @(t, y) y + t^2-1;
y0 = 7;
[t, y] = ode45(f, [1 7], y0);

plot(t, y, '*-');
%%
tspan = 0:0.2:1;
y0 = [1, 0];
f = @(t, y) [y(2); t^2*y(2) + 2*t*y(1) + 1];
[t, y] = ode45(f, tspan, y0);
for i = 1:length(tspan)
    fprintf('y(%f) = %f\n', t(i), y(i, 1));
end
plot(t, y(:,1), '*-');
%%
for i = 1:length(tspan)
    fprintf('y(%f) = %f\n', t(i), y(i, 2));
end
plot(t, y(:,2), '*-');