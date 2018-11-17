function salida = soluciones_consistencia(h)

% Condición inicial
y_0 = [2 -2 sqrt(0.5) sqrt(0.5)];
y0 = [2; -2; sqrt(0.5); sqrt(0.5)];

% Parámetros
t = 10;
%h = 0.1;
grilla = 0:h:t;

%%%%%%%%%%%%
% "Solver" %
%%%%%%%%%%%%

pkg load odepkg
tic;
sol_ode78 = ode78(@funcion2,  grilla, [2 -2 sqrt(0.5) sqrt(0.5)]);
tiempo_ode78=toc;
sol_ode78 = sol_ode78.('y');
sol_ode78 = [sol_ode78(:,1) sol_ode78(:,2) sol_ode78(:,1).*sol_ode78(:,2)];
csvwrite('sol_ode78.csv', sol_ode78);
csvwrite('tiempo_ode78.csv', tiempo_ode78, "-append");

%%%%%%%%%%%%%%%%%%%%%%%%
% Euler hacia adelante %
%%%%%%%%%%%%%%%%%%%%%%%%
tic;
sol_euler_hacia_adelante = euler_hacia_adelante(t, h, y_0);
tiempo_euler_hacia_adelante  = toc;
sol_euler_hacia_adelante = [sol_euler_hacia_adelante(:,1) sol_euler_hacia_adelante(:,2) sol_euler_hacia_adelante(:,1).*sol_euler_hacia_adelante(:,2)];
csvwrite('sol_euler_hacia_adelante.csv', sol_euler_hacia_adelante);
csvwrite('tiempo_euler_hacia_adelante.csv', tiempo_euler_hacia_adelante, "-append");


%%%%%%%%%%%%
% Trapecio %
%%%%%%%%%%%%
tic;
sol_trapecio = trapecio(t, h, y_0);
tiempo_trapecio = toc;
sol_trapecio = [sol_trapecio(:,1) sol_trapecio(:,2) sol_trapecio(:,1).*sol_trapecio(:,2)];
csvwrite('sol_trapecio.csv', sol_trapecio);
csvwrite('tiempo_trapecio.csv', tiempo_trapecio, "-append");


%%%%%%%%%%%%%%%
% Punto medio %
%%%%%%%%%%%%%%%
tic;
sol_puntomedio = puntomedio(t, h, y_0);
tiempo_puntomedio = toc;
sol_puntomedio = [sol_puntomedio(:,1) sol_puntomedio(:,2) sol_puntomedio(:,1).*sol_puntomedio(:,2)];
csvwrite('sol_puntomedio.csv', sol_puntomedio);
csvwrite('tiempo_puntomedio.csv', tiempo_puntomedio, "-append");


%%%%%%%%%%%%%%%%%%%%%
% Euler hacia atrás %
%%%%%%%%%%%%%%%%%%%%%
tic;
sol_euler_atras = euler_atras(t, h, y_0);
tiempo_euler_atras = toc;
sol_euler_atras = [sol_euler_atras(:,1) sol_euler_atras(:,2) sol_euler_atras(:,1).*sol_euler_atras(:,2)];
csvwrite('sol_euler_atras.csv', sol_euler_atras);
csvwrite('tiempo_euler_atras.csv', tiempo_euler_atras, "-append");

%%%%%%%%
% heun %
%%%%%%%%
tic;
sol_heun = heun(t, h, y_0);
tiempo_heun = toc;
sol_heun = [sol_heun(:,1) sol_heun(:,2) sol_heun(:,1).*sol_heun(:,2)];
csvwrite('sol_heun.csv', sol_heun);
csvwrite('tiempo_heun.csv', tiempo_heun, "-append");

%%%%%%%%%%%%%%%%%%%
% Runge Kutta (4) %
%%%%%%%%%%%%%%%%%%%

tic;
sol_runge_kutta = runge_kutta(t, h, y_0);
tiempo_runge_kutta = toc;
sol_runge_kutta = [sol_runge_kutta(:,1) sol_runge_kutta(:,2) sol_runge_kutta(:,1).*sol_runge_kutta(:,2)];
csvwrite('sol_runge_kutta.csv', sol_runge_kutta);
csvwrite('tiempo_runge_kutta.csv', tiempo_runge_kutta, "-append");


%%%%%%%%%%%%%%%%%%%
% Adams Bashforth %
%%%%%%%%%%%%%%%%%%%

tic;
sol_adams_bashforth = adams_bashforth(t, h, y_0);
tiempo_adams_bashforth = toc;
sol_adams_bashforth = [sol_adams_bashforth(:,1) sol_adams_bashforth(:,2) sol_adams_bashforth(:,1).*sol_adams_bashforth(:,2)];
csvwrite('sol_adams_bashforth.csv', sol_adams_bashforth);
csvwrite('tiempo_adams_bashforth.csv', tiempo_adams_bashforth, "-append");



endfunction
