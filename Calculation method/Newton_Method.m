function [x_star,index,it] = Newton_Method(fun,x,ep,it_max)
%求解非线性方程的牛顿法
%第一个分量是函数值，第二个分量是导数值
% x为初始点
% ep为精度,当 | x(k)-x(k-1) |<ep时，终止计算,缺省值为1e-5
% it_max为最大迭代次数,缺省值为100
% x_star为当迭代成功时，输出方程的根
%  当迭代失败，输出最后的迭代值
% index为指标变量，当index=1时，表明迭代成功
% 当index=0时，表明迭代失败（迭代次数>=it_max）
% it为迭代次数
if nargin<4 it_max=100;end                               
if nargin<3 ep=1e-5;end
index=0;k=1;
while k<it_max
x1=x;f=feval(fun,x);
x=x-f(1)/f(2);
    if abs(x-x1)<ep
        index=1;break;
    end
    k=k+1;
end
x_star=x;it=k;
%————————————————
%版权声明：本文为CSDN博主「潇潇雨歇_」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
%原文链接：https://blog.csdn.net/linhaiyun_ytdx/article/details/69808104