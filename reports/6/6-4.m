dt=0.003;
t=-5:dt:5;
dw=0.003;
w=-20:dw;20;

Fw=dt*f*exp(-1j*t'*w);
x0=0:0.3:1;
y0=-10:0.3:10;
[x,y]=meshgrid(x0,y0);
s=x+1j*y;
f=cos(2*pi*t).*(stepfun(t,0)-stepfun(t,4));
Fs=abs(s.*(1-exp(-4*s))./(s.*s+4*pi*pi));

subplot(211)
mesh(x,y,Fs),surf(x,y,Fs),colormap(hsv),grid on,title('Fs');
subplot(212)
plot(w,abs(Fw),'linewidth',2),grid on,title('Fw');
axis([-12 0 0 2]);