syms z; % be careful performance issue.

%quest1
Z1=(z*z+z+1)/(z*z+z-2);    %符号表达式
x1=iztrans(Z1);                   %反Z变换
simplify(x1)                       %化简

%quest2
Z2=1+z^(-1)+z^(-2)+z^(-3)+z^(-4);  
x2=iztrans(Z2);                  
simplify(x2)                    

%quest3
Z3=2*(z*z+3*z+6)*z^(-4);   
x3=iztrans(Z3);                  
simplify(x3)                    


%quest4
Z4=z*(z*z+z+1)/((z+1)*(z-2)*(z+3));   
x4=iztrans(Z4);                  
simplify(x4)                    