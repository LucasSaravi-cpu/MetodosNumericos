function  dx= delta_x(a,da,b,db,p)
% Encuentra la variación relativa del vector solucion
% 
% Variable de salida: dx=||dx||/||x|| variación relativa del vector solucion
%
% Variables de entrada:
%                      a= matriz del sistema
%                      da= matriz de perturbacion (a-a*)
%                      b= vector de terminos independientes
%                      db= vector de perturbacion (b-b*)
%                       p= tipo de norma 
if (det(a))<6*10^-15;
  disp('El sistema es singular');
  return;
end
if (norm(da,p))< (1/norm(inv(a),p))
  dx = cond(a,p)/(1-cond(a,p)*norm(da,p)/norm(a,p))*(norm(db,p)/norm(b,p)+norm(da,p)/norm(a,p));
else
   disp('No se cumple la condicion de no inversibilidad')
end

end
