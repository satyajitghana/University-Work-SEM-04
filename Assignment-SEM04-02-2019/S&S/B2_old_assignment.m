%%
n = -5:5;
x = [zeros(1, 4) 6*ones(1, 3) zeros(1, 4)];
stem(n, x)
%%
h = [zeros(1, 5) 2*ones(1, 3) zeros(1, 3)];
stem(n, h)
%%
y = conv(x, h);
miny = min(n)+min(n);
maxy = max(n)+max(n);
d = miny:maxy;
stem(d, y)
%%
x = @(t) (t>= -1 & t <= 1).*6;
h = @(t) (t>= 0 & t <= 2).*2;
delta = 0.5;
dx = -5:delta:5;
c = conv(h(dx), x(dx), 'full');
tc=(dx(1)+dx(1)):delta:(dx(end)+dx(end));
plot(tc, c)
%%
delta=0.0001;
tx=2:delta:6; %tx=(-200:300)*delta;
ty=-1:delta:1.5; % ty=(-100:300)*delta;
c=conv(y(ty),x(tx));
tc=(tx(1)+ty(1)):delta:(tx(end)+ty(end));
figure()
title('c')
subplot(3,1,1)
plot(tx,x(tx))
xlabel('n'); title('x(t)'); ylim([min(x(tx))-1,max(x(tx))+1]); grid on
subplot(3,1,2)
plot(ty,y(ty))
xlabel('n'); title('h(t)'); ylim([min(y(ty))-1,max(y(ty))+1]); grid on
subplot(3,1,3)
plot(tc,c);
xlabel('n'); title('x(t)*h(t)');ylim([min(c)-1,max(c)+1]); grid on

ylim([min(c),max(c)]);

%%
syms t tau
x = 6*(heaviside(t+1)-heaviside(t-1));
h = 2*(heaviside(t)-heaviside(t-2));
y = int(subs(x, tau)*subs(h, t-tau), tau, 0, t);
disp(y);
grid on;
subplot(3, 1, 1);
fplot(x, [-3 3]);
subplot(3, 1, 2);
fplot(h, [-3 3]);
subplot(3, 1, 3);
fplot(y, [-5 5]);

%%
delta = 0.001;
t=-3:delta:10;
t_c = -6:delta:20;
%h_t=heaviside(t-1)-heaviside(t-7);
%x_t1=5.*(heaviside(t+1)-heaviside(t-1));
x_t1 = 6*(heaviside(t+1)-heaviside(t-1));
h_t = 2*(heaviside(t)-heaviside(t-2));
dt = t(2) - t(1);
c_x_h = dt*conv(x_t1,h_t);
%c_x_h=conv(x_t1,h_t);
figure(1);
plot(t_c,c_x_h);
grid on;
%%
delta = 0.001;
t=-3:delta:10;
t_c = -6:delta:20;
x_t1 = (12*t+12).*(heaviside(t+1)-heaviside(t-1)) + (36-12*t).*(heaviside(t-1)-heaviside(t-3));
h_t = 4*(heaviside(t-2)-heaviside(t-3));
dt = t(2) - t(1);
c_x_h = dt*conv(x_t1,h_t);
%c_x_h=conv(x_t1,h_t);
figure(1);
plot(t_c,c_x_h);
grid on;

%% PLOTS
syms t
%%
x = 6*(heaviside(t+1)-heaviside(t-1));
fplot(x, [-2 4], 'LineWidth', 2)
axis([-2 4 -1 8])
xlabel('$\tau \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('$x(\tau)$', 'Interpreter', 'latex', 'FontSize', 14);
legend({'$6\times(u(\tau+1)-u(\tau-1))$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
%%
h1 = 2*(heaviside(t)-heaviside(t-2));
fplot(h1, [-2 4], 'LineWidth', 2)
axis([-2 4 -1 4])
xlabel('$t \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('$h_1(t)$', 'Interpreter', 'latex', 'FontSize', 14);
legend({'$2\times(u(t)-u(t-2))$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
%%
h2 = 4*(heaviside(t-2)-heaviside(t-3));
fplot(h2, [-2 4], 'LineWidth', 2)
axis([-2 4 -1 6])
xlabel('$t \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('$h_2(t)$', 'Interpreter', 'latex', 'FontSize', 14);
legend({'$4\times(u(t-2)-u(t-3))$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
%% h1(t-tau)
h1 = 2*(heaviside(t)-heaviside(t-2));
fplot(h1, [-2 4], 'LineWidth', 2)
axis([-2 4 -1 4])
xlabel('$t \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('$h_1(t)$', 'Interpreter', 'latex', 'FontSize', 14);
legend({'$2\times(u(t)-u(t-2))$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
xticks([0 2])
xticklabels({'t-2', 't'})

%% conv 1, cases
offset=-2;
x = 6*(heaviside(t+1-offset)-heaviside(t-1-offset));
h1 = 2*(heaviside(t)-heaviside(t-2));
fplot(x, [-4 0], 'LineWidth', 2)
hold on;
fplot(h1, [-1 4], 'LineWidth', 2)
axis([-4 4 -1 8])
xlabel('$\tau \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
% ylabel('$h_1(t)$', 'Interpreter', 'latex', 'FontSize', 14);
legend({'$x(\tau)$', '$h_1(t-\tau)$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
ax1 = gca;
set(ax1, 'FontSize', 14);
xticks([-3 -1 0 2])
xticklabels({'-1', '1', 't-2', 't'})
hold off;
%% conv 2, cases
offset = -2;
x = (12*t+12).*(heaviside(t+1)-heaviside(t-1)) + (36-12*t).*(heaviside(t-1)-heaviside(t-3));
h1 = 4*(heaviside(t-2+offset)-heaviside(t-3+offset));
fplot(x, [-2 4], 'LineWidth', 2)
hold on;
fplot(h1, [-4 6], 'LineWidth', 2)
axis([-4 6 -1 26])
xlabel('$\tau \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
% ylabel('$h_1(t)$', 'Interpreter', 'latex', 'FontSize', 14);
legend({'$y_1(\tau)$', '$h_2(t-\tau)$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
ax1 = gca;
set(ax1, 'FontSize', 14);
yticks([0 4 10 24])
xticks([-1 1 3 4 5])
xticklabels({'-1', '1', '3','t-3', 't-2'})
hold off;
%% plot for y1(t)
syms t
hold off;
y1 = (12*t+12).*(heaviside(t+1)-heaviside(t-1)) + (36-12*t).*(heaviside(t-1)-heaviside(t-3));
fplot(y1, [-3 4], 'LineWidth', 2)
xlabel('$\tau \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
legend({'$y_1(\tau)$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
ax1 = gca;
set(ax1, 'FontSize', 14);
axis([-3 4 -1 26])
yticks([0 4 10 24])
%% h2(t-tau)
h2 = 4*(heaviside(t-2)-heaviside(t-3));
fplot(h2, [0 4], 'LineWidth', 2)
axis([0 4 -1 6])
xlabel('$\tau \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
legend({'$h_2(t-\tau)$'}, 'Interpreter', 'latex', 'FontSize', 14);
grid on;
ax1 = gca;
set(ax1, 'FontSize', 14);
xticks([2 3])
xticklabels({'t-3', 't-2'})
%% plot for y(t)
syms t;
y = (24*(t-1).^2).*(heaviside(t-1)-heaviside(t-2)) + ...
    (48*t-72).*(heaviside(t-2)-heaviside(t-3)) + ...
    (-48*t.^2+336*t-504).*(heaviside(t-3)-heaviside(t-4)) + ...
    (264-48*t).*(heaviside(t-4)-heaviside(t-5)) + ...
    (24*(t-6).^2).*(heaviside(t-5)-heaviside(t-6));
fplot(y , [-1 8], 'LineWidth', 2);
axis([-1 8 -5 90]);
grid on;
xlabel('$t \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ax1 = gca;
set(ax1, 'FontSize', 14);
legend({'$y(t)$'}, 'Interpreter', 'latex', 'FontSize', 14);