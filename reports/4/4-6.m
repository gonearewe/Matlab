sys=tf([1 0], [1 1.5]); % 系统传递函数的分子和分母
t=0:0.01:30;
f=cos(2*t);
y=lsim(sys,f,t);
subplot(211)
plot(t,y)
ylim([-1 1])
title('Question 1');

sys=tf([-1 2], [1 2 3]);
t=0:0.01:30;
f=3+cos(2*t)+cos(5*t);
y=lsim(sys,f,t);
subplot(212)
plot(t,y)
title('Question 2');