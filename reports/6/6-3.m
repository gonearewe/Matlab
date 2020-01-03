x1=-3:0.08:0;         %生成X坐标
y1=-2:0.08:2;         %生成Y坐标
[x y]=meshgrid(x1,y1);%产生矩阵
s=x+i*y;              %产生复平面区域
FS=abs((3.*s+13)./(s.^2+3.*s+2)+1./((s+2).*(s.^2+3.*s+2)));
                      %计算拉氏变换样点值和幅值
mesh(x,y,FS);         %绘制网点图
surf(x,y,FS);         %绘制带阴影的三维曲面图
zlim([-1 300]);       %设置z坐标范围
colormap(hsv);        %设置颜色顺序
title('全响应');
figure;


FS=abs(1./((s+2).*(s.^2+3.*s+2)));  %计算拉氏变换样点值和幅值
mesh(x,y,FS);                       %绘制网点图
surf(x,y,FS);                       %绘制带阴影的三维曲面图
zlim([-1 300]);                     %设置z坐标范围
colormap(hsv);                      %设置颜色顺序
title('零状态响应');
figure;


FS=abs((3.*s+13)./(s.^2+3.*s+2)); %计算拉氏变换样点值和幅值
mesh(x,y,FS);                     %绘制网点图
surf(x,y,FS);                     %绘制带阴影的三维曲面图
zlim([-1 300]);                   %设置z坐标范围
colormap(hsv);                    %设置颜色顺序
title('零输入响应');
figure;

syms s;
F1=4/(s*(s+1)*(s+2))+(3*s+13)/((s+1)*(s+2));            
                      %符号法，S域表达式
ft1=ilaplace(F1);                      
                      %反拉变换
subplot(311)
ezplot(ft1);          %全响应

F2=4/(s*(s+1)*(s+2)); 
                      %符号法，S域表达式
ft2=ilaplace(F2);                      
                      %反拉变换
subplot(312)
ezplot(ft2);          %零状态响应

F3=(3*s+13)/((s+1)*(s+2)); 
                      %符号法，S域表达式
ft3=ilaplace(F3);     %反拉变换
subplot(312)
ezplot(ft3);          %零输入响应

