P = @(t, P) 0.5.*P.*(1-P./5000); 
t0 = 0;
P0 = 50;
%% taking tn = 12th year, step = 1 year
tn = 12;
h = 1;

[x, y] = rk4order(t0, P0, tn, h, P);

fprintf("taking tn = 12 years, step = 1 year\n");
fprintf("The population after 12 years is %10.5f million\n", y(end))

%% taking tn = 12th year, step = 0.5 year or 6 months
tn = 12;
h = 0.5;

[x, y] = rk4order(t0, P0, tn, h, P);

fprintf("taking tn = 12 years, step = 0.5 year or 6 months\n");
fprintf("The population after 12 years is %10.5f million\n", y(end))

%% plotting the approximated solution and actual solution
tn = 25;

% taking step size as 6 months, and 1 year
h1 = 0.5;
h2 = 1;

[x1, y1] = rk4order(t0, P0, tn, h1, P);
[x2, y2] = rk4order(t0, P0, tn, h2, P);

% actual solution
aP = @(t) 5000./(1+99.*exp(-0.5.*t));

x = 0:0.1:tn;
y = aP(x);

hold on;
plot(x1, y1, '--', 'LineWidth', 2);
plot(x1, y1, '--', 'LineWidth', 2)
plot(x, y, 'LineWidth', 2);

legend({'h=0.5', 'h=1', 'actual solution'}, 'Interpreter', 'latex');
title('Logistic Model for Population', 'Interpreter', 'latex');
xlabel('Time in Years', 'Interpreter', 'latex')
ylabel('Population in Million', 'Interpreter', 'latex')

grid on;

%% RMS error
tn = 100;
h = 0.5;
x = 0:h:tn;
y = aP(x);
[x1, y1] = rk4order(t0, P0, tn, h, P);
rmse = sqrt(mean((y-y1).^2));
fprintf('Root Mean Square Error is : %10.5f\n', rmse);
%% actual solution
aP = @(t) 5000./(1+99.*exp(-0.5.*t));