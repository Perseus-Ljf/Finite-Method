m=@(n) 1/(n+1);
k=@(n) n+1;
M=@(n) m(n)*eye(n);
K=@(n) k(n)*(2*eye(n)+diag(-ones(n-1,1),1)+diag(-ones(n-1,1),-1));
%构建相应的矩阵表达式
% diag 的第二个参数可以设定对角线的位置
Freq=[];
for i=4:100
    Ma=M(i);
    Ka=K(i);
    [V,D]=eig(Ka,Ma);
    omega=sqrt(diag(D));
    Freq=[Freq,omega(1:4)];
end

figure
plot(4:100,Freq')
hold on
plot([4,100]',[pi,2*pi,3*pi,4*pi;pi,2*pi,3*pi,4*pi])

Err=abs(Freq'-ones(97,4)*diag(1:4)*pi);
figure
plot(4:100,Err)


% omega_ex=pi*(1:n)';
% figure;
% plot([omega,omega_ex],'k*')

Modeshape=[zeros(1,4);V(:,1:4);zeros(1,4)];
figure;
plot(Modeshape,'k*--')