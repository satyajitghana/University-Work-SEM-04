load(fullfile(matlabroot,'examples','signal','strong.mat'))

x = her';
X = dct(x);
[XX,ind] = sort(abs(X),'descend');

need = 1;
while norm(X(ind(1:need)))/norm(X)<0.999
   need = need+1;
end

xpc = need/length(X)*100;

X(ind(need+1:end)) = 0;
xx = idct(X);

figure(1)
plot([x;xx;x-xx]')
legend('Original',[int2str(xpc) '% of coeffs.'],'Difference', ...
       'Location','best')
   
y = him';
Y = dct(y);

[YY,ind] = sort(abs(Y),'descend');

need = 1;
while norm(Y(ind(1:need)))/norm(Y)<0.999
   need = need+1;
end

ypc = need/length(Y)*100;

Y(ind(need+1:end)) = 0;
yy = idct(Y);

figure(2)
plot([y;yy;y-yy]')
legend('Original',[int2str(ypc) '% of coeffs.'],'Difference', ...
       'Location','best')