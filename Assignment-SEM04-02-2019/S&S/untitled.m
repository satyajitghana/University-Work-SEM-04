syms y(n)
y(n) = (62/8)-(99/8).*((3).^n)+(5/8).*((-1).^n);
n = 0:1:50;
stem(n, subs(y, n), 'linewidth', 1.3);
set(gca, 'YScale', 'log')

grid on;
title('Traffic as a function of n', 'Interpreter', 'latex', 'FontSize', 14)
xlabel('hour (n) $\rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('traffic $\rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)

n = 0:10:50;
subs(y, n)