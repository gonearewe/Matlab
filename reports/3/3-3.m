delta=0.01;
min=-2;max=2;
t=min:delta:max;
f=(stepfun(t,-2)-stepfun(t,-1)).*(t+2)+stepfun(t,-1)-stepfun(t,1)+(stepfun(t,1)-stepfun(t,2)).*(2-t);
%plot(t,f);
N=400;
deltaT=(max-min)/N;

w=-20:delta*10:20;
F=deltaT*f*exp(-j*t'*w);
subplot(311)
plot(w,F);
ylim([-1 3.5])
title('幅度');

subplot(312)
deltaW=40/400;%omega/K omega 是频域采样的区间长度 K是时域采样点个数
f1=deltaW*F*exp(j*w'*t)./(2.0*pi);
plot(t,f1);
ylim([0 1.2])
title('还原后的时域图像');

subplot(313)
plot(t,f);
ylim([0 1.2])
title('原时域图像');
