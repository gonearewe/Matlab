b=[2 ];                       %系统函数分子
a=[1 -0.9 -1];                %系统函数分母，降幂排列
[H_z w]=freqz(b,a,'whole');   %频域
subplot(211);
plot(w,abs(H_z));             %幅度
subplot(212);
plot(w,angle(H_z));           %相位