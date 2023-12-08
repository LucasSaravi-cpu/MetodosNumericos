function[p]=simpson(x,y)
dim_x=length(x); 
if dim_x/2~=round(dim_x/2)
    paso=x(2)-x(1);
    pares=2:2:dim_x-1;
    impares=3:2:dim_x-1;
    p=paso/3*(y(1)+y(dim_x)+sum(4.*y(pares))+sum(2.*y(impares)));
else
    display('no se puede por cantidad de intervalos')
end

%Trapecio
%x=[-3:0.5:3];
%y=exp((-x.^2)/2);
%trapz(x,y)
%Simpson
%Un arco de parábola son 3 puntos 2 intervalos
%Dos arcos de parábola 5 puntos
%Tres arcos de parábola son 7 puntos
%Cuatro arcos de parábola son 9 puntos 
%Euler
%f=@(x,y)-2*x^2+12*x^3-20*x+8.5
%Pasos de 0.4
%[xvalues, yvalues] = euler_a(f,0,4,1,8)
%kuta sistemas
%f=@(x,y) [-2*y(1)+5*exp(-x);-(y(1)*y(2)^2)/2]
%[x,y] = ode45(f,[0:0.1:1] ,[2,4])
%plot(x,y(:,1),'.r')
 %hold on
%plot(x,y(:,2),'.b')



