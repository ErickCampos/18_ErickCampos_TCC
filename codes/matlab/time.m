close all;
clear all;
clc;

%Blow Switch

y_blow = [84 69 59 68 61 110 48 57 132 144]/60; %YouTube Blow Switch
g_blow = [64 37 158 47 42 84 78 67 105 73]/60;   %G1 Blow Switch

y_dwell = [73 46 66 119 98 125 39 86 53 64]/60;       %YouTube Dwell
g_dwell = [117 73 289 143 150 165 102 88 107 144]/60; %G1 Blow Switch 289-->582

e = boxplot([y_blow' y_dwell' g_blow' g_dwell'], 'symbol', 'kx','outlierSize', 8);
%title('\fontsize{20}Blow Switch');
grid on;

set(e, 'linewidth', 3);
set(e, 'linestyle', '-'); 
%set(gca, 'YTick', -1:1:13);
%xt1 = '\begin{tabular}{c} YouTube \\ Blow Switch\end{tabular}';
%xt2 = '\begin{tabular}{c} YouTube \\ Dwell Time\end{tabular}';
%xt3 = '\begin{tabular}{c} G1 \\ Blow Switch\end{tabular}';
%xt4 = '\begin{tabular}{c} G1 \\ Dwell Time\end{tabular}';
%set(gca, 'XTickLabel', {xt1, xt2, xt3, xt4}, 'Fontsize', 20, 'TickLabelInterpreter', 'latex');
ylabel('Tempo (min)', 'Fontsize', 20);
% casso:
line([2.5 2.5], [0 1000], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2)
%text(4.06, 3.9, '\leftarrow 9.7min', 'fontsize', 12)
%y = [0:1:5];
%set(gca,'YTickLabel', y)
ylim([0 5]);

set(gca,'xtick', [1.0:0.5:4.0]);
set(gca,'xticklabel',{'','YouTube','','','','G1',''}, 'FontSize', 15);

ax2 = axes('Position', get(gca, 'Position'),'Color', 'none', 'YColor', 'none');
set(ax2, 'XAxisLocation', 'top','YAxisLocation','Right');

% set the same Limits and Ticks on ax2 as on ax1;
set(ax2, 'XLim', get(gca, 'XLim'),'YLim', get(gca, 'YLim'));
%set(ax2, 'XTick', get(gca, 'XTick'), 'YTick', get(gca, 'YTick'));

set(ax2, 'xtick', [0:0.25/2:1]);
set(ax2, 'xticklabel',{'','Sopro','','Dwell','','Sopro','','Dwell'}, 'fontsize', 15);
set(ax2, 'ytick', linspace(0,1,9));

%saveas(gcf, 'Time.png');
