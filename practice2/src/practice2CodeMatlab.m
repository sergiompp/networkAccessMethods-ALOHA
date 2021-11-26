clc
clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% El tráfico ofrecido entre las centrales C y D es de 15 E. En MATLAB (u otro programa para
% realizar cálculos numéricos), produce un diagrama que muestra la probabilidad de pérdidas en
% función del número de líneas. ¿Cuántas líneas son necesario para obtener una probabilidad de
% pérdidas menor a 0.01?
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     
A0_1 = 10;
A0_2 = 15;
A0_3 = 30;
A0_4 = 50;


PB_1 = [];
PB_2 = [];
PB_3 = [];
PB_4 = [];

cmax = 80;
for c = 1:cmax
    j = 0:c;
    S = sum(A0_1.^j./factorial(j));
    PB_1 = [PB_1,A0_1.^c./(factorial(c).*S)];
end

for c = 1:cmax
    j = 0:c;
    S = sum(A0_2.^j./factorial(j));
    PB_2 = [PB_2,A0_2.^c./(factorial(c).*S)];
end

for c = 1:cmax
    j = 0:c;
    S = sum(A0_3.^j./factorial(j));
    PB_3 = [PB_3,A0_3.^c./(factorial(c).*S)];
end

for c = 1:cmax
    j = 0:c;
    S = sum(A0_4.^j./factorial(j));
    PB_4 = [PB_4,A0_4.^c./(factorial(c).*S)];
end

% Representacion
figure(1)
plot([1:cmax],PB_1,[1:cmax],PB_2,[1:cmax],PB_3,[1:cmax],PB_4,[1:cmax],0.01.*ones(1,cmax),'LineWidth',1)
grid on
ylim([0,0.15])
xlim([1,cmax])
xticks([1:cmax])
legend('Probability - A0 = 10','Probability - A0 = 15','Probability - A0 = 30','Probability - A0 = 50','Probability = 0.01');
xlabel('Number of Lines')
ylabel('Loss Probability')
title('Loss Prob VS Numb. Lines')
