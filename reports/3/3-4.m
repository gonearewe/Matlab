function [y1]=fun(x);
    y1=stepfun(x,-0.5)-stepfun(x,0.5);
end
    
t=-0.5:0.01:0.5;
plot(t,fun(t));
axis([-1,1,-1,2]);
title('原函数');
figure;
N=100;
deltaT=1/N;
delta=0.01;
w=-20:delta*40:20;
f=fun(t);
F=deltaT*f*exp(-j*t'*w);
plot(w,F);
title('f（x）的频谱图');
figure;
N=100;
deltaT=1/N;
delta=0.01;
w=-20:delta*20:20;
f=fun(0.5*t);
F=deltaT*f*exp(-j*2*t'*w);
plot(w,F);
title('f（0.5x）的频谱图');
figure;
N=100;
deltaT=1/N;
delta=0.01;
w=-80:delta*160:80;
f=fun(2*t);
F=deltaT*f*exp(-j*0.5*t'*w);
plot(w,F);
title('f（2x）的频谱图');
