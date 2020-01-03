delta=0.01;
t=0:delta:1;
x1=stepfun(t,0)-stepfun(t,1);

t2=-1:delta:0;
x2=stepfun(t2,-1)-stepfun(t2,0);

g1=conv(x1,x1)*delta; % 卷积
g2=conv(x1,x2)*delta;
g3=conv(x2,x2)*delta;

num=length(g1);
n=(0:num-1)*delta;
subplot(311)
plot(n,g1);
title('f1*f1');
axis([-1,3,-1,3]);
grid on;

num=length(g2);
n=(0:num-1)*delta-1;
subplot(312)
plot(n,g2);
title('f1*f2');
axis([-2,2,-1,3]);
grid on;

num=length(g3);
n=(0:num-1)*delta-2;
subplot(313)
plot(n,g3);
title('f2*f2');
axis([-3,1,-1,3]);
grid on;