%DFT套路
N=1001; 
K=2000;
t=-15:10/N:15;
w=-25:10/K:25;
f=sin(2*pi*(t-1))/pi./(t-1);
F=10/N*f*exp(-1i*t'*w);
plot(w,abs(F));
title('幅度-老办法');              
figure;                           
                                  
%FFT做题套路
N=1024;                           %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T;%-t_length/2;         %生成时域上的离散点
x=sin(2*pi*(t-1))/pi./(t-1);      %函数
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
plot(t,x);                        %作图验证
title('验证');
figure;
X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
plot(w,abs(X));
title('幅度-FFT');                   