function h=hilbert(n)
  % Función que genera matrices de Hilberrt
  %   n : orden de la matriz
  for i=1:n
    for j=1:n
      h(i,j)=1/(i+j-1);
    end
  end
endfunction
