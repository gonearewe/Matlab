syms t;
y=sinc(t);
subplot(221)
ezplot(y,[-10,10,-0.3,1]);
grid on;

T=-24:0.8:24;
fs=sinc(T);
subplot(222)
stem(T,fs);
title('抽样');

deltaT=0.8;
w=-14*pi:0.009:14*pi;
F=deltaT*fs*exp(-j*T'*w);
subplot(223)
plot(w,abs(F));
title('幅度');

wc=4;
X=-24:0.8:24;
f1=(deltaT*wc/pi)*fs*sinc(wc/pi*(ones(length(T),1)*X-T'*ones(1,length(X))));
subplot(224)
plot(X,f1);
title('还原');