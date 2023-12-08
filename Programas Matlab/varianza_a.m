function []=varianza_a(x,y)
n=1;
c=size(x,2);
while (n<=c-2)
    n
    cp=polyfit(x,y,n);
    yp=polyval(cp,x);
    d=(y-yp).^2;
    d=sum(d)/(c-n-1)
    n=n+1;
end
end