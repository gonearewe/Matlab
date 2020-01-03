syms k;

%quest1
x1=heaviside(k)*cos(k*pi/2)*(0.5)^k;   %函数表达式
Z1=ztrans(x1);                               %Z变换
Z1=simplify(Z1)                             %化简


%quest2
x2=heaviside(k)*k*(k-1)*(2/3)^k;       %函数表达式
Z2=ztrans(x2);                               %Z变换
Z2=simplify(Z2)                             %化简

%quest3
x3=heaviside(k)-heaviside(k-5);         %函数表达式
Z3=ztrans(x3);                               %Z变换
Z3=simplify(Z3)                             %化简

%quest4
x4=k*(k-1)*(heaviside(k)-heaviside(k-5));     
                                             %函数表达式
Z4=ztrans(x4);                               %Z变换
Z4=simplify(Z4)                             %化简