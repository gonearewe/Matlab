syms t;
y=1+cos(pi*t/10.0);%原信号
ezplot(y,[-10,10,-0.3,2]);
grid on;
figure;
T=-10:0.05:10;%采样间隔应该是w/pi，这里取了更小的一个值
%这里还要注意就是题目要求的一个自变量的取值范围
fs=1+cos(pi*T/10.0);
grid on;
stem(T,fs);
title('抽样');
figure;
deltaT=0.05;%与上一个程序不同，这里deltat也要变化
w=-1:0.009:1;%频域的话可以随便一些？吧？
F=deltaT*fs*exp(-j*T'*w);%fourier变换 时->频
plot(w,abs(F));
title('频域幅度');
figure;
wc=4;%理想低通滤波器截止频率
X=-10:0.05:10;%与T保持一致
f1=(deltaT*wc/pi)*fs*sinc(wc/pi*(ones(length(T),1)*X-T'*ones(1,length(X))));%重建图像
plot(X,f1);%成图
title('还原');