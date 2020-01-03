sys=tf([4],[1,12]); % 系统传递函数的分子和分母
t=0:0.01:6;
f=12*stepfun(t,0);
y=impulse(sys,t);
subplot(211)
plot(t,y);
ylim([-0.5 4.5])
title('单位冲激响应');

y=lsim(sys,f,t);
subplot(212)
plot(t,y);
ylim([-0.5 4.5])
title('12 U(t)响应');