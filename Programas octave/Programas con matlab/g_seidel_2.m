function [P,dP,Z] = g_seidel_2(A,B,P,delta,max1)
  %%Método de Gauss_Seidel 
% Entradas
%   A       matriz de coeficientes
%   B       vector de términos independientes
%   P       vector solución inicial
%   delta   tolerancia
%   max1    máximo número de iteraciones
% Salidas
%   P       vector solución
%   dP      vector de error estimado
%   Z       secuencia de soluciones
%
%X(:,1)=P;
%Z1=[X(:,1)'];
X=P;
Z1=[X'];
for k=2:max1
    X=[(tril(A))^-1*-triu(A,1)*X+(tril(A))^-1*B];
    %Z1=[Z1;X(:,k)'];
    Z1=[Z1;X'];
    %dP=norm(A*X(:,k)-B,'inf');
    dP=norm(A*X-B,"inf");
    if(dP<delta),break,end
  endfor
  %P=X(:,end)
  P=X;
  dP;
  Z=Z1;
if(k==max1)
  disp('No se alcanza la tolerancia pedida');end
endfunction
