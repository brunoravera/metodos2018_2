%%%%%%%%%%%%%%%%%%%%
% Función derivada %
%%%%%%%%%%%%%%%%%%%%

function derivadas = funcion(x,s)
derivadas(1) = x(3);
derivadas(2) = x(4);
derivadas(3) = -2*x(2)*x(3)*x(4)/(x(1).^2+x(2).^2+1);
derivadas(4) = -2*x(1)*x(3)*x(4)/(x(1).^2+x(2).^2+1);
endfunction

