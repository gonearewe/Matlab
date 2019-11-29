sys=tf([3,2],[1,5,6]); % 系统传递函数的分子和分母
t=0:0.01:6;
f=stepfun(t,0).*exp(-2.0*t);
y=lsim(sys,f,t);  % 系统求响应，f是激励向量
plot(t,y);
title('第二题：e负2t乘ut的响应');
figure;
y=impulse(sys,t);  
plot(t,y);
title('1:单位冲激响应');
figure;
y=step(sys,t);
plot(t,y);
title('1:单位阶跃响应');