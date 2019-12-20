%quest1
Z1=sym('(z*z+z+1)/(z*z+z-2)');    %符号表达式
x1=iztrans(Z1);                   %反Z变换
simple(x1)                       %化简

%quest2
Z2=sym('1+z^(-1)+z^(-2)+z^(-3)+z^(-4)');  
                                  %符号表达式
x2=iztrans(Z2);                   %反Z变换
simple(x2)                       %化简

%quest3
Z3=sym('2*(z*z+3*z+6)*z^(-4)');   %符号表达式
x3=iztrans(Z3);                   %反Z变换
simple(x3)                       %化简


%quest4
Z4=sym('z*(z*z+z+1)/((z+1)*(z-2)*(z+3))');  
                                  %符号表达式
x4=iztrans(Z4);                   %反Z变换
simple(x4)                       %化简