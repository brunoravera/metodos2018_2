function salida = heun(t, h, y_0)
intervalo = 0:h:(t+h);
salida = y_0;
for k = 1:(length(intervalo)-2)
  salida(k+1,:) = salida(k,:) + (h/2) * (funcion(salida(k,:)) + funcion(salida(k,:) + h*funcion(salida(k,:))));
endfor
endfunction 
