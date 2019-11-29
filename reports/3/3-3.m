delta=0.01;
min=-2;max=2;
t=min:delta:max;
f=(stepfun(t,-2)-stepfun(t,-1)).*(t+2)+stepfun(t,-1)-stepfun(t,1)+(stepfun(t,1)-stepfun(t,2)).*(2-t);
%plot(t,f);
N=400;
deltaT=(max-min)/N;

w=-20:delta*10:20;
F=deltaT*f*exp(-j*t'*w);
plot(w,F);
title('幅度');
figure;
deltaW=40/400;%omega/K omega 是频域采样的区间长度 K是时域采样点个数
f1=deltaW*F*exp(j*w'*t)./(2.0*pi);
plot(t,f1);
title('还原后的时域图像');
figure;
plot(t,f);
title('原时域图像');
