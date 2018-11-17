function y = adams_bashforth(t, h, y_0)
intervalo = 0:h:t;
y(1,:) = y_0;

for p = 1:3

  i = h*funcion(y(p,:));
  
  yp = y +i/2;
  
  %f = k+h/2;
  
  m = h*funcion(yp(p,:));
  
  ys = y + m/2;
  
    
  l = h*funcion(ys(p,:));
  
  yt = y + l;
  
  %n = k+h;
  
  j = h*funcion(yt(p,:));
  
  y(p+1,:) = y(p,:) + 1/6*(i+2*m+2*l+j);
  
endfor  

%anterior3 = y(1,:) + h * funcion(y(1, :)); %paso 1 en cada iteracion
%anterior2 = anterior3 + h * funcion(anterior3); %paso 2 en cada iteracion
%anterior1 = anterior2 + h * funcion(anterior2); %paso 3 en cada iteracion

for k = 1:(length(intervalo)-4)
  i = k+3;
  %y(i,:) = anterior1 + h * funcion(anterior1);
  yant(i+1,:) = y(i,:) + (h/24)*(55*funcion(y(i,:)) - 59*funcion(y(i-1,:)) + 37* funcion(y(i-2,:)) - 9*funcion(y(i-3,:)));
  
  %yprima(i+1,:)= funcion(yant(i+1,:));
  y(i+1,:) = y(i,:) + (h/24)*(9*funcion(yant(i+1,:)) + 19*funcion(y(i,:)) - 5* funcion(y(i-1,:)) +funcion(y(i-2,:)));
  % y(i-3,:)= y(i-2,:);
  %y(i-2,:)= y(i-1,:);
  %y(i-1,:) = y(i,:);
  
endfor

endfunction