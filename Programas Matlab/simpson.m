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