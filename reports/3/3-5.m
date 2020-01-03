t=-10:0.01:10;
f=sawtooth((t-1)*pi,0.5);

subplot(311)
plot(t,f);
ylim([-1.2 1.2])
title('origin image');

N=2000;
deltaT=1/N;
delta=0.01;
w=-20:delta*2:20;
F=deltaT*f*exp(-j*t'*w);
subplot(312)
plot(w,abs(F));
title('幅度');


deltaW=0.5;%omega/K omega 是频域采样的区间长度 K是时域采样点个数
f1=deltaW*F*exp(j*w'*t)./(2.0*pi);
subplot(313)
plot(t,f1);
title('还原后的图像');