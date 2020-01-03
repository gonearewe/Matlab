% 符号法
syms t; % be careful performance issue.
f=(2-exp(-2*t))*heaviside(t);
subplot(221)
ezplot(f,[-1,10]);
f=cos(pi*t/2)*(heaviside(t)-heaviside(t-4))';
subplot(222)
ezplot(f,[-2,10]);
f=exp(t)*cos(t)*heaviside(t)';
subplot(223)
ezplot(f,[-2,10]);
f=2/3*t*heaviside(t+2)';
subplot(224)
ezplot(f,[-10,10]);

% 数值法
figure;
t=-1:0.01:10;
y1=stepfun(t,0);
y=y1.*(2-exp(-2.*t));
subplot(2,2,1)
plot(t,y);

t=-1:0.01:10;
f1=stepfun(t,0)-stepfun(t,4);
f=(cos(pi*t/2)).*f1;
subplot(2,2,2)
plot(t,f);

t=-2:0.01:10;
f1=stepfun(t,0);
f=(exp(t).*cos(t)).*f1;
subplot(2,2,3)
plot(t,f);

t=-10:0.001:10;
f1=stepfun(t,-2);
f=2/3.*t.*f1;
subplot(2,2,4)
plot(t,f);

