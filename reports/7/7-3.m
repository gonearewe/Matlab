t=-0.5:0.01:0.5;
subplot(221)
plot(t,fun(t));
axis([-1,1,-1,2]);
title('原函数');

N=100;
deltaT=1/N;
delta=0.01;

w=-20:delta*40:20;
f=fun(t);
F=deltaT*f*exp(-j*t'*w);
subplot(222)
plot(w,F);
title('f（x）的频谱图-DFT');

w=-20:delta*20:20;
f=fun(0.5*t);
F=deltaT*f*exp(-j*2*t'*w);
subplot(223)
plot(w,F);
title('f（0.5x）的频谱图-DFT');

w=-80:delta*160:80;
f=fun(2*t);
F=deltaT*f*exp(-j*0.5*t'*w);
subplot(224)
plot(w,F);
title('f（2x）的频谱图-DFT');
                                  %前面原封不动的抄了一遍3-4
                                  
%FFT做题套路
figure;
N=1024*2;                         %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T-t_length/2;           %生成时域上的离散点

x=fun(t);                   % 函数 f(t)
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
subplot(321)`
plot(t,x);                        %作图验证
title('验证1');
ylim([-0.2 1.2])

X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
subplot(322)
plot(w,abs(X));
title('幅度-FFT-F（X）');  

x=fun(0.5*t);           % 函数 f(0.5t)
w_length=2*pi/T;                 
W=w_length/N;                    
w=(0:N-1)*W-w_length/2;           
subplot(323)
plot(t,x);                     
title('验证2');
ylim([-0.2 1.2])

X=T*fft(x,N);                 
X=fftshift(X);               
subplot(324)
plot(w,abs(X));
title('幅度-FFT-F（0.5X）');   

x=fun(2.0*t);          % 函数 f(2t)
w_length=2*pi/T;                 
W=w_length/N;                    
w=(0:N-1)*W-w_length/2;           
subplot(325)
plot(t,x);                     
title('验证3');
ylim([-0.2 1.2])

X=T*fft(x,N);                 
X=fftshift(X);               
subplot(326)
plot(w,abs(X));
title('幅度-FFT-F（2X）');   