function y = trapecio(t, h, y_0)
intervalo = 0:h:t;
y = y_0;

for k = 1:(length(intervalo)-1)
  anterior = y(k,:) + h * funcion(y(k, :));
  for i=1:10
    y(k+1,:) = y(k,:) + (h/2) * (funcion(y(k, :)) + funcion(anterior));
    anterior = y(k+1,:);
  endfor
endfor

endfunction
