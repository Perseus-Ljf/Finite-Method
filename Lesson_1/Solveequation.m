% to solve equations
f1=@(x) cos(x).*cosh(x)+1;
f2=@(x) cos(x).*sinh(x)-cosh(x).*sin(x);
f3=@(x,a) cos(x).*cosh(x)+1+a*x.*(cos(x).*sinh(x)-cosh(x).*sin(x));

% 
% figure;hold on;
% fplot(f1,[0,3*pi])
% fplot(f2,[0,3*pi])
% fplot(@(x)f3(x,1),[0,3*pi])

x1=fzero(f1,pi/2),
x2=fzero(f1,pi/2+pi),
x3=fzero(f1,pi/2+3*pi),