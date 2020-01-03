%    做题一般套路
X1=-4:0.08:0;%生成X坐标
Y1=-2:0.08:2;%生成Y坐标
[x y]=meshgrid(X1,Y1);%产生矩阵
s=x+i*y;%产生复平面区域
FS=abs(2./(s+1)+5./(s+3));%计算拉氏变换样点值和幅值
subplot(211)
mesh(x,y,FS);%绘制网点图
surf(x,y,FS);%绘制带阴影的三维曲面图
zlim([-1 100]);
colormap(hsv);%设置颜色顺序

GS=abs(1./((s+3).*(s+3)+1));%计算拉氏变换样点值和幅值
subplot(212)
mesh(x,y,GS);%绘制网点图
surf(x,y,GS);%绘制带阴影的三维曲面图
zlim([-1 10]);
colormap(hsv);%设置颜色顺序