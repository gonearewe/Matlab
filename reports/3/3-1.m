N=1001; 
K=2000;
t=-15:10/N:15;
w=-25:10/K:25;
f=sin(2*pi*(t-1))/pi./(t-1);
F=10/N*f*exp(-1i*t'*w); % fourier 正变换
subplot(2,1,1);
plot(w,abs(F));
grid minor;
title('幅度');
subplot(2,1,2);
plot(w,atan(imag(F)./real(F)));
grid minor;
title('相位'); 