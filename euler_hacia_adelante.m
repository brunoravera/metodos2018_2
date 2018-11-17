%%%%%%%%%%%%%%%%%%%%%%%%
% Euler hacia adelante %
%%%%%%%%%%%%%%%%%%%%%%%%

function salida = euler_hacia_adelante(t, h, y_0)
intervalo = 0:h:t;
salida = y_0;
for k = 1:(length(intervalo)-1)
  salida(k+1,:) = salida(k,:) + h * funcion(salida(k, :));
endfor
endfunction 
