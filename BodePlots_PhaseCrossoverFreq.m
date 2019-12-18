%% Experiment : To plot the Bode plots of given Systems
clc;close all;clearvars;
%% Q7 : Find the Gain 'K' for which Gain Cross over Frequncy is '5 rad/sec'
% Ans : Gain K = 0.056, as seen from Bode plot (Solution in Assignement)
%      0.056 s^2
%  ----------------------  <== System 1
%  0.004 s^2 + 0.22 s + 1

Num1 = [0.056 0 0]; %Numerator Coeffcients
Den1 = [0.2 1]; %Denominator factor 1 Coefficients
Den2 = [0.02 1]; %Denominator factor 2 Coefficients
Tofs1 = tf(Num1,conv(Den1,Den2)); %Creation of System
figure(1)
margin(Tofs1) %Plots the Bode Plot and also gives the "Gain Crossover Frequency"

%% Q8 : Find the Phase Crossover Frequency
% Ans = 9.976 (Theoretically), Verified from bode plot
%              1000
%  -------------------------------  <== System 2
%  s^3 + 24.95 s^2 + 99.53 s + 999

Num2 = 1000; %Numerator Coeffcients
Den3 = [1 22.5]; %Denominator factor 1 Coefficients
Den4 = [1 2.45 44.4]; %Denominator factor 2 Coefficients
Tofs2 = tf(Num2,conv(Den3,Den4)); %Creation of System
figure(2)
margin(Tofs2) %Plots the Bode Plot and also gives the "Phase Crossover Frequency"