clc
clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% En MATLAB (u otro programa para realizar cálculos numéricos), produce un diagrama que
% caracteriza el retardo en función del rendimiento si el canal consiste en 1, 2 o 4 líneas.
% Específicamente:
% • el número medio de paquetes generado (G) varia entre 0 y 5;
% • el diagrama muestra el rendimiento en el eje horizontal y el retardo en el eje vertical;
% • el diagrama combina tres curvas, una para cada escenario (1 línea, 2 líneas, 4 líneas).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
G = 0:0.1:5;               % Num. Medio Paquetes Generado
T = 0.5;                   % Tiempo

% 1 línea, ALOHA ranurado
S1 = G.*exp(-G);
D1 = (exp(G)-1).*(T+5.*T) + 3./2.*T;

% 2 líneas, ALOHA puro
S2 = 2.*G./2.*exp(-2*G./2);
D2 = (exp(2.*G./2)-1).*(T+5.*T) + T;

% 3 líneas, ALOHA puro
S3 = 3.*G./3.*exp(-3.*G./3);
D3 = (exp(3.*G./3)-1).*(T+5.*T) + T;

% 4 líneas, ALOHA puro
S4 = 4.*G./4.*exp(-2.*G./4);
D4 = (exp(2.*G./4)-1).*(T+5.*T) + T;

% 5 líneas, ALOHA puro
S5 = 5.*G./5.*exp(-2.*G./5);
D5 = (exp(2.*G./5)-1).*(T+5.*T) + T;

% 10 líneas, ALOHA puro
S10 = 10.*G./10.*exp(-2.*G./10);
D10 = (exp(2.*G./10)-1).*(T+5.*T) + T;

% 20 líneas, ALOHA puro
S20 = 4.*G./4.*exp(-2.*G./20);
D20 = (exp(2.*G./20)-1).*(T+5.*T) + T;

% 50 líneas, ALOHA puro
S50 = 50.*G./50.*exp(-2.*G./50);
D50 = (exp(2.*G./50)-1).*(T+5.*T) + T;

% 100 líneas, ALOHA puro
S100 = 100.*G./100.*exp(-2.*G./100);
D100 = (exp(2.*G./100)-1).*(T+5.*T) + T;


% Representación
figure(1)
plot(S1,D1,S2,D2,S3,D3,S4,D4, S5,D5,S10,D10,S20,D20,S50,D50,S100,D100,'LineWidth',1);
grid on
legend('1 línea, ALOHA ranurado','2 líneas, ALOHA puro','3 líneas, ALOHA puro','4 líneas, ALOHA puro','5 líneas, ALOHA puro','10 líneas, ALOHA puro','20 líneas, ALOHA puro', '50 líneas, ALOHA puro','100 líneas, ALOHA puro');
xlabel('Rendimiento')
ylabel('Retardo')
ylim([0,max(D4)])
