t=-10:0.01:10;
f=sawtooth((t-1)*pi,0.5);
plot(t,f);
title('origin image');
figure;
N=2000;
deltaT=1/N;
delta=0.01;
w=-20:delta*2:20;
F=deltaT*f*exp(-j*t'*w);
plot(w,abs(F));
title('幅度');
figure;

deltaW=0.5;%omega/K omega 是频域采样的区间长度 K是时域采样点个数
f1=deltaW*F*exp(j*w'*t)./(2.0*pi);
plot(t,f1);
title('还原后的图像');