sys=tf([3,2],[1,5,6]); % 系统传递函数的分子和分母
t=0:0.01:6;
f=stepfun(t,0).*exp(-2.0*t);
y=lsim(sys,f,t);  % 系统求响应，f是激励向量
subplot(311)
plot(t,y);
title('e负2t乘ut的响应');

y=impulse(sys,t);  
subplot(312)
plot(t,y);
ylim([-0.5 3.5])
title('单位冲激响应');

y=step(sys,t);
subplot(313)
plot(t,y);
title('单位阶跃响应');