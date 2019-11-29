sys=tf([4],[1,12]); % 系统传递函数的分子和分母
t=0:0.01:6;
f=12*stepfun(t,0);
y=impulse(sys,t);
plot(t,y);
title('1:单位冲激响应');
figure;
y=lsim(sys,f,t);
plot(t,y);
title('2:12ut响应');