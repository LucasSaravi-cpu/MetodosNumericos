%función de Gauss Seidel para el cálculo de la solución de un sistema de
%ecuaciones lineales
% A = matriz de coeficientes del sistema
% C = vector de términos independientes
% X = vector solución inicial
% error = tolerancia permitida

function [Tabla_solucion,iteracion,Error_eval]=gauss_seidel(A,C,X,error)

 n = length(C);
 X = zeros(n,1);
 Error_eval = ones(n,1);

iteracion = 0;
while max(Error_eval) > error
    iteracion = iteracion + 1;
    Z = X;  
    for i = 1:n
        j = 1:n; 
        j(i) = [];  
        Xtemp = X;  
        Xtemp(i) = [];  
        X(i) = (C(i) - sum(A(i,j) * Xtemp)) / A(i,i);
    end
    Xsolucion(:,iteracion) = X;
    %Error_eval = sqrt((X - Z).^2);
    Error_eval=norm(A*X-C',inf);
end

%% muestra de resultados
Tabla_solucion = [1:iteracion;Xsolucion]';

