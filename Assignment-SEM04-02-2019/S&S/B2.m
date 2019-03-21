syms y(s)
y1 = ((48)/(s^3))*(-exp(-6*s)+exp(-5*s)+2*exp(-4*s)-2*exp(-3*s)-exp(-2*s)+exp(-s));
fplot(y1, [0 2], 'LineWidth', 1.3)
hold on;
y2 = ((8)/(s^2))*(exp(-5*s)+2*exp(-4*s)-2*exp(-2*s)+3*exp(-s));
fplot(y2, [0 2], 'LineWidth', 1.3)
hold off;

grid on;
legend('y1(s)', 'y2(s)')
set(gca, 'YScale', 'log')

title('Y1(s) and Y2(s)', 'Interpreter', 'latex', 'FontSize', 14)
xlabel('s $\rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('Y(s) $\rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)