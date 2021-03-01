function [K,M]=mass_stiff(n)

m=1/(n+1);
k=n+1;
M=m*eye(n);
K=k*(2*eye(n)+diag(-ones(n-1,1),1)+diag(-ones(n-1,1),-1));