% code for   NRZ-L  signal

clc;
clear;
x=[ 0 1 0 1 0 0 0 1 1 0 1 1 0 0 0 1 ];
T=length(x);
n=400;
N=n*T;
dt=T/N;
t=0:dt:T;
y=zeros(1,length(t));
for i=0:T-1;
    if x(i+1)==1
        y(i*n+1 : (i+1)*n)=0;
    else
        y(i*n+1 : (i+1)*n)=3.5;
    end;
end;
plot(t,y);
axis([0 t(end) -2 5]);
grid on;
title('NRZ');


%end;


%the output is:-