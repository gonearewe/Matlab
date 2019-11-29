n=-2*pi:0.01:2*pi;
x=2*exp(j.*n+0.25*pi*j)
plot(n,real(x)); % x的实部
title('real part of x');
axis([-2*pi,2*pi,-3,3]);
figure;
plot(n,imag(x)); % x的虚部
title('imaginary part of x');
axis([-2*pi,2*pi,-3,3]);
figure;
plot(n,abs(x)); % 模
title('absolute number of x');
axis([-2*pi,2*pi,-3,3]);
figure;
plot(n,angle(x)); % 幅角
title('angle of x');
axis([-2*pi,2*pi,-1.1*pi,1.1*pi]);
