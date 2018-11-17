function y = runge_kutta(t, h, y_0)

intervalo = 0:h:(t+h);

y = y_0;

k = 1;

while k <(length(intervalo)-1)

  i = h*funcion(y(k,:));
  
  yp = y +i/2;
  
  %f = k+h/2;
  
  m = h*funcion(yp(k,:));
  
  ys = y + m/2;
  
    
  l = h*funcion(ys(k,:));
  
  yt = y + l;
  
  %n = k+h;
  
  j = h*funcion(yt(k,:));
  
  y(k+1,:) = y(k,:) + 1/6*(i+2*m+2*l+j);
  
  k = k+1;
  
endwhile

endfunction 
