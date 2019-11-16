clear all % 清理内存
delta=0.01;  % 取样间隔
t=0:delta:15; % 信号起始时刻由第一个参数指定，不是自己判断的信号开始不为 0 的时刻
t_start=0;  % 两个信号的卷积的起始时刻是各自起始时刻的和

% Two functions.
f=exp(-t);
h=(t.*t).*exp(-2*t);

y=conv(f,h)*delta; % conv() 本身只能够计算离散卷积
n=length(y); % 计算 y 序列长度

t_y=(0:n-1)*delta+t_start;
plot(t_y, y);
axis([0 15 -0.01 0.1]);

grid on;