%% Paso 0
% introducir las matrices A y B
A=[-0.1107 0; 0.1107 -0.1107]
B=[-1 1;0 0]
% introducir las matrices Q y R
Q=[10 0;0 15]
R=[0.1 0; 0 1]
% condiciones iniciales
x0=[0.1; 0.1]
% calcular la matriz de controlabilidad
matrizC=ctrb(A,B)
% determinar el rango de la matriz de controlabilidad
rank(matrizC) %el rango debe ser igual al número de filas y columnas de A

%% Paso 1 y 2
% Resolver la ecuación de Riccati y hallar la ganancia de realimentación
% ambos pasos son resueltos con la función LQR de Matlab
[K,P,E]=lqr(A,B,Q,R)

%% Paso 3
% la sustitución solo significa que 
% u=-Kx

%% Paso 4
% Ver diagrama de bloques de Simulink
% 

%% Paso 5
J=(1/2)*x0'*P*x0


