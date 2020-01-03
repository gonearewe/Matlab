delta=0.01;
t=1:delta:3;
x1=(t-1).*(stepfun(t,1)-stepfun(t,3));

% 查看x1 图像是否正确
plot(t,x1);
title('f1');
axis([0,4,-1,3]);
grid on;
figure;

t2=-1:delta:100;
x2=stepfun(t2,-1)-2.*stepfun(t2,2);

% 查看x2 图像是否正确
plot(t2,x2);
title('f2');
axis([-2,5,-2,2]);
grid on;
figure;

g1=conv(x1,x2)*delta;
num=length(g1);
n=(0:num-1)*delta;
plot(n,g1);
title('f1*f2');
axis([-1,10,-1,4]);
grid on;
