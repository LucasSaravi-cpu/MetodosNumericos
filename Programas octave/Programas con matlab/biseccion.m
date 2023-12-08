function  x = biseccion(func,a,b,tol)
% Aproxima por el método  de la bisección una raíz de la ecuación fun(x)=0
disp('Metodo de la biseccion');
fun=inline(func);
u=feval(fun,a);
v=feval(fun,b);
n=1; 
if sign(u)==sign(v)
   disp('Error la función debe cambiar de signo en (a,b)');
   return; 
end 
while ((b-a)*0.5>tol)
   c=(b+a)/2; w=feval(fun,c); 
   disp(['n=', num2str(n)]);
   disp(['c=', num2str(c)]);
   %disp(['f(c)=', num2str(h)]);
if sign(u)==sign(w)
	a = c; u=w;
  h=abs((b-a)/2);
else
	b=c; v=w;
  h=((b-a)/2);
end
	n=n+1;
  disp(['error= ', num2str(h)]);
  disp(['f(c)=', num2str(abs(w))]);
end;

x=c;
