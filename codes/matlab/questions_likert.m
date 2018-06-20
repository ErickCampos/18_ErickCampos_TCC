hold off;
close all;
clear all;
clc;
           %YouTube Q     G1 Q        % padding (casso)
blow=[...
	[0  10  20 30 40;  0 10 10 30 50; 0 0 0 0 0];  %Question 1
	[0  10  50 20 20;  0 0  20 30 50; 0 0 0 0 0];  %Question 2
	[0  0   40 30 30;  0 10 20 50 20; 0 0 0 0 0];  %Question 3
	[0  0   40 20 40;  0 10 20 40 30; 0 0 0 0 0];  %Question 4
	[0  10  0  50 40;  0 0  20 40 40; 0 0 0 0 0];  %Question 5 
	[10 20 10  20 40; 10 10 0  30 50; 0 0 0 0 0];  %Question 6
];

dwell=[...
	[0 0  70 20 10;0  10 70 0  20; 0 0 0 0 0];  %Question 1 ok
	[0 30 10 40 20;10 10 50 20 10 ; 0 0 0 0 0];  %Question 2 ok
	[0 20 30 40 10;0  30 50 10 10 ; 0 0 0 0 0];  %Question 3
	[0 10 30 20 40;0 0 20 20 60; 0 0 0 0 0];  %Question 4
	[0 10 40 20 30;10 0 0 30 60; 0 0 0 0 0];  %Question 5 
	[10 30 30 0 30;10 10 30 20 30; 0 0 0 0 0];  %Question 6
];

% ------------------------------------------------------------------------------
figure;
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
b = bar(blow, 'stacked');
% https://www.mathworks.com/matlabcentral/answers/360292-how-can-i-change-the-color-of-each-stack-in-stacked-bar-plot
% https://nl.mathworks.com/matlabcentral/fileexchange/24064-figure-window-generator-fig-m--version-3-1?focused=5118806&tab=function
set(b, {'FaceColor'}, {'r';[1 0.6 0];'y';'g';[0 0.5 0]});

xlim([0 18]); % casso
set(gca,'xtick', [1:0.5:17]); % casso

% casso
xticklabels={};
for i = 1:6
	idx = [i*3-2 i*3-1];
	text(idx(1), 83.5,  'YouTube', 'rotation', 90, 'fontsize', 22);
	text(idx(2), 101, 'G1',      'rotation', 90, 'fontsize', 22);
	for j = i*6-5:i*6
		xticklabels{j} = '';
	end
	j=6*(i-1)+2;
	xticklabels{j} = sprintf('Question %d', i);
end
set(gca,'xticklabel',xticklabels, 'fontsize', 23);

l=legend(...
' Answer 1',...
' Answer 2',...
' Answer 3',...
' Answer 4',...
' Answer 5'...
);
set(l,'Location', 'northoutside', 'Orientation', 'horizontal', 'Box', 'on', 'FontSize', 23);
ylim([0 110]);
ylabel('Percentage', 'FontSize', 40);
set(gca,'box', 'off');
grid on;

% ------------------------------------------------------------------------------
figure;
set(gcf, 'Position', get(0,'Screensize')); % Maximize figure. 
bb = bar(dwell, 'stacked');
% https://www.mathworks.com/matlabcentral/answers/360292-how-can-i-change-the-color-of-each-stack-in-stacked-bar-plot
% https://nl.mathworks.com/matlabcentral/fileexchange/24064-figure-window-generator-fig-m--version-3-1?focused=5118806&tab=function
set(bb, {'FaceColor'}, {'r';[1 0.6 0];'y';'g';[0 0.5 0]});

xlim([0 18]); % casso
set(gca,'xtick', [1:0.5:17]); % casso

% casso
xticklabels={};
for i = 1:6
	idx = [i*3-2 i*3-1];
	text(idx(1), 83.5,  'YouTube', 'rotation', 90, 'fontsize', 22);
	text(idx(2), 101, 'G1',      'rotation', 90, 'fontsize', 22);
	for j = i*6-5:i*6
		xticklabels{j} = '';
	end
	j=6*(i-1)+2;
	xticklabels{j} = sprintf('Question %d', i);
end
set(gca,'xticklabel',xticklabels, 'fontsize', 23);

ww=legend(...
' Answer 1',...
' Answer 2',...
' Answer 3',...
' Answer 4',...
' Answer 5'...
);
set(ww,'Location', 'northoutside', 'Orientation', 'horizontal', 'Box', 'on', 'FontSize', 23);
ylim([0 110]);
ylabel('Percentage', 'Fontsize', 40);
set(gca,'box', 'off');
grid on;
