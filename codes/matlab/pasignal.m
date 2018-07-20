hold off;
clear all;
close all;

load pasamps.txt;
pasamps = pasamps(29000:60999);

ax = gca;
plot(pasamps, 'b-', 'linewidth', 4);
set(gca, 'XTick', 0:4000:32000);
xl = xlabel('Amostras','fontsize', 24);
yl = ylabel('Amplitude','fontsize', 24);
grid;
xlim([0 32000]);

ax.XAxis.Exponent=0;
ax.YAxis.Exponent=3;

ax2 = axes('Position', get(gca,'Position'), 'Color','none', 'YColor','none');
set(ax2, 'XAxisLocation', 'top', 'YAxisLocation', 'right');
set(ax2, 'XLim', get(gca, 'XLim'), 'YLim', get(gca,'YLim'));
set(ax2, 'XTick', linspace(0,1,9));
set(ax2, 'XTickLabel', {'','','1s','','2s','','3s','','4s'});

ax.XAxis.FontSize  = 22;
ax2.XAxis.FontSize = 26;
ax.YAxis.FontSize  = 24;

xl.FontSize = 36;
yl.FontSize = 40;
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure.
