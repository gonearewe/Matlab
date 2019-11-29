eq1='D2y+4*Dy+4*y=Dx+3*x'; % D2表示二阶微分，D1表示一阶微分
eq2='x=exp(-1*t)*heaviside(t)';
cond='Dy(-0.01)=0,y(-0.01)=0';  % 初始条件自变量写成-0.01(0-)，因为有跳变
answer2=dsolve(eq1,eq2,cond);
simplify(answer2.y);
subplot(3,1,1);
ezplot(answer2.y,[-10,10]);
axis([-10,10,-0.5,0.5]);

% 零输入响应
eq='D2y+4*Dy+4*y=0';
cond='Dy(0)=1,y(0)=1';
answer1=dsolve(eq,cond);
subplot(3,1,2);
ezplot(answer1,[-10,10]);

%全响应
answer=answer1+answer2.y;
subplot(3,1,3);
ezplot(answer,[-10,10]);