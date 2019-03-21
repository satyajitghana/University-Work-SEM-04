
%      ***** MATLAB Code Starts Here *****
%
%CONVOLUTION_02_MAT

%

fig_size = [232 84 774 624];

t = 0:0.01:10; % time vector

nt = length(t);

dt = t(2);

h = 2*t.*exp(-t) + exp(-2*t) - exp(-3*t); % impulse response

x = 1 - exp(-1.5*t); % input signal

%

figure(1),clf,plot(t,x,t,h),grid,xlabel('Time (s)'),ylabel('Amplitude'),...

title('Input x(t) and Impulse Response h(t)'),...

text(2.5,0.95,'x(t)'),text(2.5,0.45,'h(t)'),set(gcf,'Position',fig_size)

%

figure(2),clf,plot(t,x,2.5-t,h),grid,xlabel('Time Tau (s)'),ylabel('Amplitude'),...

title('Input x(tau) and Impulse Response h(t-tau), t = 2.5 s'),...

text(2.5,0.95,'x(tau)'),text(2.25,0.65,'h(t-tau)'),set(gcf,'Position',fig_size)

%

% Calculation of the product of x(tau) & h(t-tau) for t = 2.5 s

%

tau = t(1:251);

tmtau = 2.5 - tau;

hx = (1 - exp(-1.5*tau)) .* ( 2*tmtau.*exp(-tmtau) + exp(-2*tmtau) - exp(-3*tmtau) );

%

figure(3),clf,plot(t(1:251),hx),grid,xlabel('Time Tau (s)'),ylabel('Amplitude'),...

title('Product of Input x(tau) and Impulse Response h(t-tau), t = 2.5 s'),...

text(0.75,0.25,'Value of y(t) at t = 2.5 s equals the area under this curve'),...

set(gcf,'Position',fig_size)

%

[numh,denh] = residue([0;2;1;-1;],[-1;-1;-2;-3],0); % calculation of transfer function

[numx,denx] = residue([1; -1],[0; -1.5],0); % calculation of input transform

[numy,deny] = series(numx,denx,numh,denh); % calculation of output transform

%

[resy,poly,ky] = residue(numy,deny); % partial fraction expansion for output

%

y1 = lsim(numh,denh,x,t); % calculation of output using "lsim"

%

figure(4),clf,plot(t,y1,t,x,t,h,t(251),y1(251),'r*'),grid,xlabel('Time (s)'),ylabel('Amplitude'),...

title('Input x(t),Impulse Response h(t), and Output y(t)'),...

text(2.5,0.9,'x(t)'),text(3.5,0.3,'h(t)'),text(3.5,1.6,'y(t)'),...

text(2.7,y1(251),sprintf('y(t=2.5) = %g',y1(251))),set(gcf,'Position',fig_size)

%

y2 = conv(x,h) * dt; % calculation of output using "conv"

y2 = y2(1:nt);

%

y3 = 0;

figure(5),clf,plot(t,y1,'g-',t,y2,'r-.'),grid,xlabel('Time (s)'),ylabel('Amplitude'),...

title('Output y(t) from LSIM and from CONV'),set(gcf,'Position',fig_size)
