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

%Cuanto mas grande es el polinomio mas inestable se vuelve , por lo tanto definimos una varianza que involucre la eficiencia .
%menor varianza
%varianza
%plot(x,y,'*b')

%p=polyfit(x,y,7)

%xx=[-0.5:0.1:1.5]
%yy=polyval(p,xx)
%hold on
%plot(xx,yy,'r')
%lagran
%p=lagrange_p(x,y)
%xx=0:0.1:4
%yy=polyval(p,xx)    
%plot(x,y,'b*')
%hold on
%plot(xx,yy,'r')
%luego evaluamos el valor real con el valor obtenido
%xx=2   Generacion de los valores de x para evaluar el polinomio de Lagrange
%yy=polyval(p,xx)    Evaluacion del polinomio en los valores xx
%yy =  0.69344   valor aproximado

%F(x) = ln(x) como x=2 el valor real 0,693147

%Error absoluto = |0.693147- 0.69344 |= 2.93x10^-10

%Error relativo=  |error absoluto /valor real| =0.00042271



