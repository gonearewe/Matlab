%DFT套路
N=1001; 
K=2000;
t=-15:10/N:15;
w=-25:10/K:25;
f=sin(2*pi*(t-1))/pi./(t-1);
F=10/N*f*exp(-1i*t'*w);
subplot(311)
plot(w,abs(F));
title('幅度 DFT');              %这里我原封不动的抄了作业3-1
                           
%FFT做题套路
N=1024;                           %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T;%-t_length/2;           %生成时域上的离散点
x=sin(2*pi*(t-1))/pi./(t-1);      %函数
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
subplot(312)
plot(t,x);                        %作图验证
title('验证');

X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
subplot(313)
plot(w,abs(X));
xlim([-25 25])
title('幅度 FFT');                   