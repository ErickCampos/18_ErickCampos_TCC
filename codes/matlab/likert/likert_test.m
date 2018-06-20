
allLabels={'Scale 5',
    'Scale 4', 
    'Scale 3', 
    'Scale 2',
    'Scale 1'};

allGroups={'Question 1',
    'Question 2',
    'Question 3'
    'Question 4'
    'Question 5'
    'Question 6'};

%% number of replies in each rating category

%%%%%%YouTube Blow Swich
y_blow=[%
    40, 30, 20, 10, 0;  %ok
    30, 40, 20, 10, 0;  %ok
    30, 30, 40, 0, 0;   %ok
    40, 20, 40, 0, 0;   %ok
     40, 50, 0 10, 0;   %ok
     40, 20, 10, 20, 10;%ok
     
];

g_blow = [
    50, 30, 10, 10, 0;
    50, 30, 20, 0, 0;
    20, 50, 20, 10, 0;
    30, 40, 20, 10, 0;
    40, 40, 20, 0, 0;
    50, 30, 0,  10, 10;]; % G1 Blow Switch


 y_dwell = [
    10, 20, 70, 0, 0;
    20, 10, 40, 30, 0;
    10, 20, 40, 30, 0;
    40, 20, 30, 10, 0;
    30, 20, 40, 10, 0;
    20, 0, 30, 50, 0;
    ]; %YT Dwell Time


g_dwell = [20, 70, 0, 10, 0;
10, 50, 30, 0, 10;
10, 30, 50, 10, 0 ; 
60, 20, 30, 0, 0;
60, 30, 0, 0, 10;
40, 20, 30, 0, 10;];  




question=[' '];
likert(allLabels,allGroups,y_blow,question)




