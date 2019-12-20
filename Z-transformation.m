% 符号法 f(k)的Z变换
x3=sym('heavside(k)-heavside(k-5)');         %函数表达式
Z3=ztrans(x3);                               %Z变换
Z3=simplify(Z3)                              %化简

% 符号法 F(Z)的反Z变换
Z1=sym('(z*z+z+1)/(z*z+z-2)');    %符号表达式
x1=iztrans(Z1);                   %反Z变换
simple(x1)                        %化简

% 由H(Z)求幅频，相频特性曲线
b=[4 4];                      %系统函数分子
a=[1 7/6 5/6];                %系统函数分母，降幂排列
[H_z w]=freqz(b,a,'whole');   %频域 
subplot(211);
%幅度
plot(w,abs(H_z));             
subplot(212);
%相位
plot(w,angle(H_z));           
figure;

% 已知差分方程，自己笔算出H(Z)再用上面的方法