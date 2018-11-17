

% Condición inicial
y_0 = [2 -2 sqrt(0.5) sqrt(0.5)];
y0 = [2; -2; sqrt(0.5); sqrt(0.5)];

% Parámetros
t = 10;
h = 0.1;
grilla = 0:h:t;

%%%%%%%%%%%%
% "Solver" %
%%%%%%%%%%%%

pkg load odepkg
sol_ode78 = ode78(@funcion2,  grilla, [2 -2 sqrt(0.5) sqrt(0.5)]);
sol_ode78 = sol_ode78.('y');
sol_ode78 = [sol_ode78(:,1) sol_ode78(:,2) sol_ode78(:,1).*sol_ode78(:,2)];
csvwrite('sol_ode78.csv', sol_ode78);


%%%%%%%%%%%%%%%%%%%%%%%%
% Euler hacia adelante %
%%%%%%%%%%%%%%%%%%%%%%%%

sol_euler_hacia_adelante = euler_hacia_adelante(t, h, y_0);
sol_euler_hacia_adelante = [sol_euler_hacia_adelante(:,1) sol_euler_hacia_adelante(:,2) sol_euler_hacia_adelante(:,1).*sol_euler_hacia_adelante(:,2)];
csvwrite('sol_euler_hacia_adelante.csv', sol_euler_hacia_adelante);

%%%%%%%%%%%%
% Trapecio %
%%%%%%%%%%%%

sol_trapecio = trapecio(t, h, y_0);
sol_trapecio = [sol_trapecio(:,1) sol_trapecio(:,2) sol_trapecio(:,1).*sol_trapecio(:,2)];
csvwrite('sol_trapecio.csv', sol_trapecio);


%%%%%%%%%%%%%%%
% Punto medio %
%%%%%%%%%%%%%%%

sol_puntomedio = puntomedio(t, h, y_0);
sol_puntomedio = [sol_puntomedio(:,1) sol_puntomedio(:,2) sol_puntomedio(:,1).*sol_puntomedio(:,2)];
csvwrite('sol_puntomedio.csv', sol_puntomedio);


%%%%%%%%%%%%%%%%%%%%%
% Euler hacia atrás %
%%%%%%%%%%%%%%%%%%%%%

sol_euler_atras = euler_atras(t, h, y_0);
sol_euler_atras = [sol_euler_atras(:,1) sol_euler_atras(:,2) sol_euler_atras(:,1).*sol_euler_atras(:,2)];
csvwrite('sol_euler_atras.csv', sol_euler_atras);


%%%%%%%%
% heun %
%%%%%%%%

sol_heun = heun(t, h, y_0);
sol_heun = [sol_heun(:,1) sol_heun(:,2) sol_heun(:,1).*sol_heun(:,2)];
csvwrite('sol_heun.csv', sol_heun);

%%%%%%%%%%%%%%%%%%%
% Runge Kutta (4) %
%%%%%%%%%%%%%%%%%%%

sol_runge_kutta = runge_kutta(t, h, y_0);
sol_runge_kutta = [sol_runge_kutta(:,1) sol_runge_kutta(:,2) sol_runge_kutta(:,1).*sol_runge_kutta(:,2)];
csvwrite('sol_runge_kutta.csv', sol_runge_kutta);
