f = @(x,y,z) 2.*x.*y.*z + x.^2 + y.^2 - 2.*z + 1;
interval = [-10 10 -10 10 -10 10];
fimplicit3(f, interval, 'MeshDensity', 20);
title('Implicit Plot of the Function', 'Interpreter', 'latex')
legend({'$2xyz+x^2+y^2-2z+1=0$'}, 'Interpreter', 'latex', 'FontSize', 14)
xlabel('X-axis', 'Interpreter', 'latex');ylabel('Y-axis', 'Interpreter', 'latex');zlabel('Z-axis', 'Interpreter', 'latex')
grid on;
%%
f = @(x,y,z) 2.*x.*y.*z + x.^2 + y.^2 - 2.*z + 1;
interval = [-10 10 -10 10 -10 10];
fimplicit3(f, interval, 'EdgeColor', 'none', 'FaceAlpha', 0.6);
title('Implicit Plot of the Function', 'Interpreter', 'latex')
legend({'$2xyz+x^2+y^2-2z+1=0$'}, 'Interpreter', 'latex', 'FontSize', 14)
xlabel('X-axis', 'Interpreter', 'latex');ylabel('Y-axis', 'Interpreter', 'latex');zlabel('Z-axis', 'Interpreter', 'latex')
grid on;
%%
[X,Y]= meshgrid(1:10,2:20);
Z=(X.^2+Y.^2+1)./(2-(2*X.*Y));
surf(X,Y,Z)
title('Integral Surface', 'Interpreter', 'latex');
legend({'$2xyz+x^2+y^2-2z+1=0$'}, 'Interpreter', 'latex', 'FontSize', 14);
xlabel('X-axis', 'Interpreter', 'latex');ylabel('Y-axis', 'Interpreter', 'latex');zlabel('Z-axis', 'Interpreter', 'latex')