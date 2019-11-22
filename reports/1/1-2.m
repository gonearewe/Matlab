% 符号法
syms t; % be careful performance issue.
f=sym('(2-exp(-2*t))*heaviside(t)');
ezplot(f,[-1,10]);
f=sym('cos(pi*t/2)*(heaviside(t)-heaviside(t-4))');
ezplot(f,[-2,10]);
f=sym('exp(t)*cos(t)*heaviside(t)');
ezplot(f,[-2,10]);
f=sym('2/3*t*heaviside(t+2)');
ezplot(f,[-10,10]);

% 数值法
t=-1,0.01,10;
y1=stepfun(t,0);
y=y1.*(2-exp(-2.*t));
plot(t,y);
subplot(2,2,2);

t=-1,0.01,10;
f1=stepfun(t,0)-stepfun(t,4);
f=(cos(pi*t/2)).*f1;
plot(t,f);

t=-2,0.01,10;
f1=stepfun(t,0);
f=(exp(t).*cos(t)).*f1;
plot(t,f);

t=-10,0.001,10;
f1=stepfun(t,-2);
f=2/3.*t.*f1;
plot(t,f);

