ft=sym('cos(2*pi*t)*(heavside(t)-heavside(t-4))'); 
                      %符号法，t域表达式
F=laplace(ft)                     
                      %拉式变换
%不会求F，不知道怎么作图或者导出表达式
%ezplot(F);           %拉式变换的图
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