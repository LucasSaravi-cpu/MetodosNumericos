function h=hilbert(n)
  % Funci�n que genera matrices de Hilberrt
  %   n : orden de la matriz
  for i=1:n
    for j=1:n
      h(i,j)=1/(i+j-1);
    end
  end
endfunction
