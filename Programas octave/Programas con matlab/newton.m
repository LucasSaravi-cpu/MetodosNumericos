function  [n,p,err]=newton(func,p0,tol,maxiter)
% Aproxima por el método newton una raiz de la ecuacion fun(x)=0
%cercana p0, tomando como criterio de parada abs(fun(x)-x)<tol o la cota sobre
% el numero de iteraciones dada  por maxiter.
%
% Variables de entrada:
%     fun(x): funcion se debe introducir con notación simbolica (eg. 'f')
%     p0: estimación inicial para el proceso de iteración
%     tol: tolerancia en error absoluto para la raiz
%     maxiter: maximo numero de iteraciones permitidas
%
% Variables de salida:
%     n: iteracion
%     p: vector de valores de la aproximacion a la raiz
%     err: error 

fun=inline(func);
dif_fun=inline(diff(func));

p(1)=p0;
for n=2:maxiter;
   p(n)=p(n-1)-feval(fun,p(n-1))/feval(dif_fun,p(n-1));
   %err=abs(p(n)-p(n-1));
   err=abs(feval(fun,p(n)));
   if err<tol
      return;
   end
   
% disp(['n=',num2str(n)]);
% disp(['f(x)=',num2str(p(n))]);
% disp(['abs(f(x)-x)=',num2str(err)]);
  
end
if n==maxiter
   disp('Se ha excedido el número de iteraciones') 
end

