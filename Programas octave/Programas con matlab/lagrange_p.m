function p=lagrange_p(x,y)
    n=length(x); %n-1 es el grado del polinomio
    if length(y)~=n 
        error('x e y tienen que tener la misma longitud')
    end
    p=zeros(1,n);
    for i=1:n
        pol=[y(i)];
        for j=1:n
            if(i~=j)
                pol=conv([1 -x(j)],pol)/(x(i)-x(j)); %multiplica un polinomio por un binomio
            end
        end
        p=p+pol;
    end
end