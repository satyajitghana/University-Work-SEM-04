a = 3.5.*[1 -1 1 -1 1 1 -1 1 -1 -1 1 1 1 -1 -1];
x = [0:length(a)-1];
stairs(x, a, 'LineWidth', 2);
ax1 = gca;
set(ax1, 'FontSize', 14);
xticks(0:length(a)-1);
xticklabels({'       1', '       0', '       1', '       0', '       1', '       1', '       0',...
    '       1', '       0', '       0', '       1', '       1', '       1', '       0'});
yticks([-3.5 0 3.5])
axis([0 length(a)-1 -5 5])
grid on;
xlabel('$t \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
ylabel('$V \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
legend({'NRZ(VN)'}, 'Interpreter', 'latex', 'FontSize', 14);
%%
    freq_zero = 10*10^6;
    freq_one = 5*10^6;
    bit_duration = 10^-6;
    bits = [1 0 1 0 1 1 0 1 0 0 1 1 1 0];
    A = 3.5;
    time = 0:bit_duration:length(bits)*bit_duration;
    syms t;
    for i = 1:length(bits)

        if bits(i) == 0
            f = freq_zero;
        else
            f = freq_one;
        end

        fplot(A*sin(2*pi*f*t), [time(i) time(i+1)], 'color', [.5 .4 .7], 'LineWidth', 2);
        hold on;
    end

    axis([0 max(time) -5 5])
    xticks(time)
    yticks([-3.5 0 3.5])
    ax1 = gca;
    set(ax1, 'FontSize', 14);
    grid on;
    xlabel('$time (seconds) \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
    ylabel('$Amplitude (volts) \rightarrow$', 'Interpreter', 'latex', 'FontSize', 14)
    legend({'SINE PULSE NRZ(VN)'}, 'Interpreter', 'latex', 'FontSize', 14);