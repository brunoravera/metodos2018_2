function y = euler_atras(t, h, y_0)
intervalo = 0:h:t;
y = y_0;

for k = 1:(length(intervalo)-1)
  anterior = y(k,:) + h * funcion(y(k, :)); %paso 0 en cada iteracion
  for i=1:100
    y(k+1,:) = y(k,:) + h*(funcion(anterior));
    anterior = y(k+1,:);
  endfor
endfor

endfunction 
