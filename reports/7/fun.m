function [y1]=fun(x);
    y1=stepfun(x,-0.5)-stepfun(x,0.5);
end