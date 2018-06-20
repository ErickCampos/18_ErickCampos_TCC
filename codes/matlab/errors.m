close all;
clear all;
clc;

%Blow Switch

y_blow = [1 3 3 4 4 3 3 2 2 5]; %YouTube
g_blow = [0 0 13 1 1 4 6 5 1 9];    %G1

y_dwell = [0 0 7 5 3 2 3 4 5 0];
g_dwell = [4 32 7 12 23 8 3 9 6 4]; %32-->36

e = boxplot([y_blow' y_dwell' g_blow' g_dwell'], 'symbol', 'kx', 'outlierSize', 8);
grid on;

set(e, 'linewidth', 3); 
set(e, 'linestyle', '-'); 
y=0:5:36;
%y(length(y))=36;
set(gca, 'YTick', y);
y(length(y))=36;
set(gca, 'YTickLabel',y);


%xt1 = '\begin{tabular}{c} YouTube \\ Blow Switch\end{tabular}';
%xt2 = '\begin{tabular}{c} YouTube \\ Dwell Time\end{tabular}';
%xt3 = '\begin{tabular}{c} G1 \\ Blow Switch\end{tabular}';
%xt4 = '\begin{tabular}{c} G1 \\ Dwell Time\end{tabular}';

%set(gca, 'XTickLabel', {xt1, xt2, xt3, xt4}, 'Fontsize', 20, 'TickLabelInterpreter', 'latex');

ylabel('Quantidade de Erros', 'Fontsize', 20);
line([2.5 2.5], [0 1000], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 2)
ylim([0 36]);
%hold on;
%plot(4, 25, 'kx', 'markersize',8, 'linewidth',3);
%text();
set(gca,'xtick', [1.0:0.5:4.0]);
set(gca,'xticklabel',{'','YouTube','','','','G1',''}, 'FontSize', 15);

ax2 = axes('Position', get(gca, 'Position'),'Color', 'none', 'YColor', 'none');
set(ax2, 'XAxisLocation', 'top','YAxisLocation','Right');

% set the same Limits and Ticks on ax2 as on ax1;
set(ax2, 'XLim', get(gca, 'XLim'),'YLim', get(gca, 'YLim'));
%set(ax2, 'XTick', get(gca, 'XTick'), 'YTick', get(gca, 'YTick'));

set(ax2, 'xtick', [0:0.25/2:1]);
set(ax2, 'xticklabel',{'','Sopro','','Dwell','','Sopro','','Dwell'}, 'fontsize', 15)
set(ax2, 'ytick', linspace(0,1,9));

%saveas(gcf, 'DwellTimeErrors.png');

