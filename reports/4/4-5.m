sys=tf([5],[1,5]); % 系统传递函数的分子和分母
t=0:0.01:6;
f=stepfun(t,0)-stepfun(t,1);
y=lsim(sys,f,t)
subplot(211)
plot(t,y)
ylim([-0.5 1.5])

eq1='Dy+5*y=5*x'; % D2表示二阶微分，D表示一阶微分
eq2='x=heaviside(t)-heaviside(t-1)';
cond='Dy(-0.01)=0,y(-0.01)=0';  % 初始条件自变量写成-0.01(0-)，因为有跳变
answer=dsolve(eq1,eq2,cond);
simplify(answer.y);
subplot(212)
ezplot(answer.y,[-1,6]);

