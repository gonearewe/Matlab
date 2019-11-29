delta=0.009;
min=-20;max=20;
w=min:delta:max;
F=-j*2*w./(16+w.*w);

N=100;
deltaW=(max-min)./N;
T=40;
K=2000;
t=-20:0.009:20;
f=deltaW*F*exp(j*w'*t)./(2.0*pi); % fourier 反变换
plot(t,f);
title('时域信号图');

