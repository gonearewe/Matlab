%     做题一般套路
num=[1 -2];                             %传递函数的分子系数，降幂排列
den=[1 3 3 1 0];                        %传递函数的分母系数，降幂排列
[z p k]=tf2zp(num,den);
zplane(z,p);                            %极点
figure;
freqs(num,den);                         %频
figure;
X1=-4:0.08:0;                           %生成X坐标
Y1=-2:0.08:2;                           %生成Y坐标
[x y]=meshgrid(X1,Y1);                  %产生矩阵
s=x+i*y;                                %产生复平面区域
FS=abs((s-2)./(s.*(s+1).*(s+1).*(s+1)));%计算拉氏变换样点值和幅值
mesh(x,y,FS);                           %绘制网点图
surf(x,y,FS);                           %绘制带阴影的三维曲面图
zlim([-1 100]);
colormap(hsv);                          %设置颜色顺序
figure;                                 %分图
%     做题一般套路
num=[1 4 3];                            %传递函数的分子系数，降幂排列
den=[1 7 10 0];                         %传递函数的分母系数，降幂排列
[z p k]=tf2zp(num,den);
zplane(z,p);                            %极点
figure;
freqs(num,den);                         %频
figure;
X1=-6:0.05:2;                           %生成X坐标，由于零点分布特性，这里不能再取0-4
Y1=-2:0.05:2;                           %生成Y坐标
[x y]=meshgrid(X1,Y1);                  %产生矩阵
s=x+i*y;                                %产生复平面区域
FS=abs((s+1).*(s+3)./(s.*(s+2).*(s+5)));%计算拉氏变换样点值和幅值
                                        %零点值很小，这是为啥？
mesh(x,y,FS);                           %绘制网点图
surf(x,y,FS);                           %绘制带阴影的三维曲面图
zlim([-1 100]);
colormap(hsv);                          %设置颜色顺序

syms s; % be careful performance issue.
F1=(s-2)/(s*(s+1)^3);            %符号法，S域表达式，第一题
ft1=ilaplace(F1);                       %反拉变换
figure;
subplot(121)
ezplot(ft1);
%title('quest1-3');                     %这一句影响表达式显示了所以不要了

F2=(s+1)*(s+3)/(s*(s+2)*(s+5));  %符号法，S域表达式，第二题
ft2=ilaplace(F2);                       %反拉变换
subplot(122)
ezplot(ft2);
%title('quest2-3');