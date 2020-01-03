% Must be named as 'fun.m' so that the fun() call be found and call.
function [y1]=fun(x);
    y1=2*stepfun(x,0)-stepfun(x,1)-stepfun(x,2);
end