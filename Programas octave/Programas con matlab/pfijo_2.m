function  [n,p,err]=pfijo_2(funcf,funcg,p0,tol,maxiter)
% Aproxima por el m�todo del punto fijo una raiz de la ecuacion fun(x)=x
%cercana p0, tomando como criterio de parada abs(fun(x)-x)<tol o la cota sobre
% el numero de iteraciones dada  por maxiter.
%
% Variables de entrada:
%     fun(x): funcion a iterar, se debe introducir con notaci�n simbolica (eg. 'g')
%     x0: estimaci�n inicial para el proceso de iteraci�n
%     tol: tolerancia en error absoluto para la raiz
%     maxiter: maximo numero de iteraciones permitidas
%
% Variables de salida:
%     p: valor aproximado de la raiz

p(1)=p0;
fun=inline(funcg);
fun1=inline(funcf);
for n=2:maxiter;
   p(n)=feval(fun,p(n-1));
   %err=abs(p(n)-p(n-1));
   err=abs(feval(fun1,p(n)));
   if err<tol
      return;
   end
   
% disp(['n=',num2str(n)]);
% disp(['f(x)=',num2str(p(n))]);
% disp(['abs(f(x)-x)=',num2str(err)]);
  
end
if n==maxiter
   disp('se ha excedido el n�mero de iteraciones')
   
end
p
