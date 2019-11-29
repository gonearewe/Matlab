delta=0.01;
t=-1:delta:1;
x1=stepfun(t,-1)-stepfun(t,1);
plot(t,x1);
title('f1');
axis([-2,2,-1,2]);
grid on;
figure;
%验证部分，相当于printf的debug法
t2=-3:delta:1;
x2=(t2+3).*(stepfun(t2,-3)-stepfun(t2,-2))+stepfun(t2,-2)-stepfun(t2,0)+(1-t2).*(stepfun(t2,0)-stepfun(t2,1));
plot(t2,x2);
title('f2');
axis([-4,2,-1,2]);
grid on;
figure;
%验证部分，相当于printf的debug法
g1=conv(x1,x2)*delta;
num=length(g1);
n=(0:num-1)*delta-4;
plot(n,g1);
title('f1*f2');
axis([-5,3,-1,4]);
grid on;
