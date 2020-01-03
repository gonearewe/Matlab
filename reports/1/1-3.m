x=-10:0.01:10;
y=stepfun(x,-2)+stepfun(x,-1)-2*stepfun(x,0);
subplot(511);
plot(x,y);
axis([-3,1,-1,3]);

subplot(512);
plot(x,fun(x-2));
axis([1,5,-1,3]);

subplot(513);
plot(x,fun(0.5*x)); % a=0.5
axis([-1,6,-1,3]);

subplot(514);
plot(x,fun(2.0*x)); % a=2
axis([-1,2,-1,3]);

subplot(515);
plot(x,fun(0.5*x+1));
axis([-3,3,-1,3]);