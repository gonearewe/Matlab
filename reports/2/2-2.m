delta=0.01;
t=0:delta:2;
x1=stepfun(t,0)-stepfun(t,2);

t2=0:delta:3;
x2=stepfun(t2,0)+stepfun(t2,1)-stepfun(t2,2)-stepfun(t2,3);

g1=conv(x1,x2)*delta;
num=length(g1);
n=(0:num-1)*delta;
plot(n,g1);
title('f1*f2');
axis([-1,6,-1,4]);
grid on;