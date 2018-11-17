function y = puntomedio(t, h, y_0)
intervalo = 0:h:t;
y(1,:) = y_0;
y(2,:) = y_0 + h * funcion(y(1, :));

for k = 1:(length(intervalo)-2)
  y(k+2,:) = y(k,:) + 2*h*funcion(y(k+1,:));
endfor

endfunction
