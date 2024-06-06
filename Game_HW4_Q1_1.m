clc
clear
close all

X1 = 0:0.2:2;
X2 = 2 - X1;
U_1 = (X1).^(1/8);
U_2 = (X2).^(1/4);

% Plot for X1 and X2
figure;
plot(X1, X2, 'b', 'LineWidth', 2);
xlabel('X1');
ylabel('X2');
title('Strategies');
grid on;
axis equal;
xlim([0 2.5]);
ylim([0 2.5]);
set(gca, 'FontSize', 12);

% Plot for U_1 and U_2
figure;
plot(U_1, U_2, 'r', 'LineWidth', 2);
xlabel('U_1');
ylabel('U_2');
title('Joint Payoff');
grid on;
axis equal;
xlim([0 1.5]);
ylim([0 1.5]);
set(gca, 'FontSize', 12);
