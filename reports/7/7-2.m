% 老方法
delta=0.01;
min=-2;max=2;
t=min:delta:max;
f=(stepfun(t,-2)-stepfun(t,-1)).*(t+2)+stepfun(t,-1)-stepfun(t,1)+(stepfun(t,1)-stepfun(t,2)).*(2-t);
N=400;
deltaT=(max-min)/N;
w=-20:delta*10:20;
F=deltaT*f*exp(-j*t'*w);
subplot(311)
plot(w,F);
ylim([-1 3.5])
title('幅度');

%FFT做题套路
N=512;                            %取样点数
t_length=40;                      %取样长度
T=t_length/N;                     %取样间隔
t=(0:N-1)*T-t_length/2;           %生成时域上的离散点
x=(stepfun(t,-2)-stepfun(t,-1)).*(t+2)+stepfun(t,-1)-stepfun(t,1)+(stepfun(t,1)-stepfun(t,2)).*(2-t);
                                  %函数
w_length=2*pi/T;                  %频域采样长度
W=w_length/N;                     %频域采样间隔
w=(0:N-1)*W-w_length/2;           %生成频域上的点
subplot(312)
plot(t,x);                        %作图验证
ylim([-0.2 1.2])
title('验证');

X=T*fft(x,N);                     %FFT
X=fftshift(X);                    %相移
subplot(313)
plot(w,abs(X));
axis([-20 20 -0.2 3.2])
title('幅度-FFT');  
                                  

