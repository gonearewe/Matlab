t=-0.5:0.01:0.5;
plot(t,HW3_4_fun(t));
axis([-1,1,-1,2]);
title('原函数');
figure;
N=100;
deltaT=1/N;
delta=0.01;
w=-20:delta*40:20;
f=HW3_4_fun(t);
F=deltaT*f*exp(-j*t'*w);
plot(w,F);
title('f（x）的频谱图-DFT');
figure;
N=100;
deltaT=1/N;
delta=0.01;
w=-20:delta*20:20;
f=HW3_4_fun(0.5*t);
F=deltaT*f*exp(-j*2*t'*w);
plot(w,F);
title('f（0.5x）的频谱图-DFT');
figure;
N=100;
deltaT=1/N;
delta=0.01;
w=-80:delta*160:80;
f=HW3_4_fun(2*t);
F=deltaT*f*exp(-j*0.5*t'*w);
plot(w,F);
title('f（2x）的频谱图-DFT');
                                  %前面原封不动的抄了一遍3-4
                                  %顺便改了下title
%FFT做题套路
N=1024*2;                         %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T-t_length/2;           %生成时域上的离散点
x=HW3_4_fun(t);                   %函数
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
plot(t,x);                        %作图验证
title('验证1');
figure;
X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
plot(w,abs(X));
title('幅度-FFT-F（X）');  
figure;
%FFT做题套路
N=1024*2;                         %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T-t_length/2;           %生成时域上的离散点
x=HW3_4_fun(0.5*t);               %函数
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
plot(t,x);                        %作图验证
title('验证2');
figure;
X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
plot(w,abs(X));
title('幅度-FFT-F（0.5X）');   
figure;
%FFT做题套路
N=2048;                           %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T-t_length/2;           %生成时域上的离散点
x=HW3_4_fun(2.0*t);               %函数
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
plot(t,x);                        %作图验证
title('验证3');
figure;
X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
plot(w,abs(X));
title('幅度-FFT-F（0.5X）');   