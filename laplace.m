% 做题一般套路
% 已知H(s)
num=[1 4 3];                            %传递函数的分子系数，降幂排列
den=[1 7 10 0];                         %传递函数的分母系数，降幂排列
[z p k]=tf2zp(num,den);
% 零极点图
zplane(z,p);                            
figure;
% 幅频响应图
freqs(num,den);                         
figure;

X1=-6:0.05:2;                           %生成X坐标，根据零点分布特性选取区间
Y1=-2:0.05:2;                           %生成Y坐标
[x y]=meshgrid(X1,Y1);                  %产生矩阵
s=x+i*y;                                %产生复平面区域
FS=abs((s+1).*(s+3)./(s.*(s+2).*(s+5)));%计算拉氏变换样点值和幅值

% 画三维图%
mesh(x,y,FS);                           %绘制网点图
surf(x,y,FS);                           %绘制带阴影的三维曲面图
zlim([-1 100]);
colormap(hsv);                          %设置颜色顺序
figure;

% 反变换求原函数
F1=sym('(s-2)/(s*(s+1)^3)');            %符号法，S域表达式，第一题
ft1=ilaplace(F1);                       %反拉变换
ezplot(ft1);
%title('quest1-3');                     %这一句影响表达式显示了所以不要了
figure;