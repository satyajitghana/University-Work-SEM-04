[x,y]= meshgrid(1:10,2:20);
z=(x.^2+y.^2+1)./(2-(2*x.*y));
surf(x,y,z)
title('Integral Surface');
legend('Required Curve');
xlabel('X-axis');ylabel('Y-axis');zlabel('Z-axis')
