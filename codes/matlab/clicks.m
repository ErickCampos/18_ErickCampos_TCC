close all;
hold off;
clear all;
close all;
clc;

y_blow = [6 7 8 8 9 8 6 6 8 6]';
g_blow = [4 4 8 5 5 7 7 4 4 4]';

y_dwell = [7 6 14 9 10 7 10 9 12 7]';
g_dwell = [11 21 13 16 27 13 8 13 10 8]';

x = [y_blow g_blow];
z = [y_dwell g_dwell]; 

figure; % casso
r=[0.5 0.5 0.5; 1 1 1];
colormap(r);
e = bar(x);
grid on;
set(e,'linewidth', 2);
set(gca, 'XTick', 0:1:10);
set(gca, 'YTick', 0:4:32);
t=legend(' YouTube ', ' G1 ');
set(t, 'FontSize', 15);
xlabel('Participantes', 'Fontsize', 20);
ylabel('Quantidade de Cliques', 'Fontsize', 20);

ylim([0 28]); % casso
xlim([0.50 10.50]);
%saveas(gcf, 'BlowSwitchClicks.png');

figure; % casso
colormap(r);
s = bar(z);
grid on;
set(s,'linewidth', 2);
set(gca, 'XTick', 0:1:10);
set(gca, 'YTick', 0:4:32);
l = legend(' YouTube ', ' G1 ');
set(l, 'FontSize', 15);
%title('Dwell Time Clicks', 'fontsize', 45); % casso
xlabel('Participantes', 'Fontsize', 20);
ylabel('Quantidade de Cliques', 'Fontsize', 20);
xlim([0.50 10.50]); % casso
ylim([0 28]); % casso

%saveas(gcf, 'DwellTimeClicks.png');
