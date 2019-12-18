%% Experiment : Plot the root locus
%Solve theoretically and then cross check with plot
clc;close all;clearvars;
%% Example 1:
%       s
%  -----------  <== System 1 
%  s^2 + s + 3

num1 = [0 1 0]; %Numerator Coeffcients
den1 = [1 1 3]; %Denominator Coefficients
sys1 = tf(num1,den1) %Creation of System
figure(1);
rlocus(num1,den1); %Plotting of Root Locus Plot
title('Root Locus Plot - System 1');
%% Example 2:
%               s + 10
%  --------------------------------  <== System 2
%  s^4 + 6 s^3 + 16 s^2 + 21 s + 10

num2 = [0 1 10]; %Numerator Coeffcients
p1 = [0 1 1]; %Denominator Factors p1 p2 p3
p2 = [0 1 2];
p3 = [1 3 5];
p4 = conv(p1,p2);
p5 = conv(p4,p3); %Denominator Coefficients
sys2 = tf(num2,p5) %Creation of System
figure(2)
rlocus(num2,p5); %Plotting of Root Locus Plot
title('Root Locus Plot - System 2');