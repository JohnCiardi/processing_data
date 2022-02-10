clear;clc;close all;

LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
% Grade = [num2str([1,2,3]);num2str([1,2,3]);num2str([1,2,3]);num2str([1,2,3]);num2str([1,2,3])];
Grade = ['1 2 3';'1 2 3';'1 2 3';'1 2 3';'1 2 3'];
varNames = {'Last Name','Age','Smoker (1 or 0)','grade'};
T = table(LastName,Age,Smoker,Grade,'VariableNames',varNames);

writetable(T,'sampletable.dat','WriteMode','overwrite');
% writetable(T,'sampletable.xlsx','WriteMode','replacefile');

T_preserve1 = readtable('sampletable.dat','VariableNamingRule','preserve');
% T_preserve1 = readtable('sampletable.xlsx','VariableNamingRule','preserve');

newInsect = table({'zhang tengfei'},{25},{false});

writetable(newInsect,'sampletable.dat','WriteMode','Append',...
    'WriteVariableNames',false,'WriteRowNames',true);

T_preserve2 = readtable('sampletable.dat','VariableNamingRule','preserve');
