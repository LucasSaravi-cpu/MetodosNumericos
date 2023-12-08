function [xvalues, yvalues] = euler_a(f,x0,xn,y0,n)
%EULER: MATLAB function M-file that solve the
%ODE y’=f, y(x0)=y0 on [x0,y0] using a partition
%with n equally spaced subintervals
dx = (xn-x0)/n;
x(1) = x0;
y(1) = y0;
for k=1:n
x(k+1)=x(k) + dx;
y(k+1)= y(k) + f(x(k),y(k))*dx;
end
xvalues = x';
yvalues = y';