%% Experiment : Plot the time response of a system

clc;clearvars;close all;

%   2s + 1
% ------------   =>    This is the first System
% s^2 + 2s + 5

num1 = [2 1]; %The numerator
den1 = [1 2 5]; %The denominator
sys1 = tf(num1,den1); %Create the system
figure(1);
step(num1,den1) %Plot the Step response.Save it,Print it and affix in the
                %journal along with code


%    s
% -------   =>    This is the second System
%  s + 3

num2 = [1 0]; %The numerator
den2 = [1 3]; %The denominator
sys2 = tf(num2,den2); %Create the system
figure(2);
step(num2,den2) %Plot the Step response.Save it,Print it and affix in the
                %journal along with code
                
%      s + 1
% ----------------   =>    This is the third System, in pole zero form
%  (s + 3)(s + 2)

G = zpk([-1],[-2 -3],1); %z = zeros, p = poles, k = gain
figure(3);
step(G) %Plot the Step response.Save it,Print it and affix in the
        %journal along with code
                
%      s + 1
% ----------------   =>    This is the third System, in coefficient form
%  (s + 3)(s + 2)

num3 = [1 1]; %The numerator
den3 = [1 5 6]; %The denominator
sys3 = tf(num3,den3); %Create the system
figure(4);
step(num3,den3) %Plot the Step response.Save it,Print it and affix in the
                %journal along with code
                

%       s + 1
%  ---------------  =>    This is the fourth System, as a closed loop
%  s^2 + 11 s + 13

%                    |     s + 1      |
%R(s) -------------->|----------------|----------------> C(s)
%           |        | s^2 + 11 s + 13|        |
%           |                                  |
%           |<-------------|8|<----------------|
                                              

num4 = [1 1]; %The numerator
den4 = [1 3 5]; %The denominator
Gofs = tf(num4,den4); %Create the Open loop Transfer func G(s)
Hofs = 8; % Create the Feedback Function H(s)
CLF1 = feedback(Gofs,Hofs); %This is the closed loop System
figure(5);
step(CLF1) %Plot the Step response.Save it,Print it and affix in the
          %journal along with code
          

%             (s+1) (s+2) (s+3)
%---------------------------------------------  => This is the sixth system
%(s^2 + 4.407s + 5.171) (s^2 + 3.593s + 5.995)

num5 = [1 1]; %The numerator
den5 = [1 3 5]; %The denominator
Gofs = tf(num5,den5); %Create the Open loop Transfer func G(s)
Hofs = zpk([-1],[-2 -3],1); %Create the feedback function
CLF2 = feedback(Gofs,Hofs); %This is the closed loop System
figure(6);
step(CLF2) %Plot the Step response.Save it,Print it and affix in the
          %journal along with code
          
figure(7)
subplot(231)
step(num1,den1)
title('System 1');

subplot(232)
step(num2,den2)
title('System 2');

subplot(233)
step(G)
title('System 3');

subplot(234)
step(num3,den3)
title('System 4');

subplot(235)
step(CLF1)
title('System 5');

subplot(236)
step(CLF2)
title('System 6');