%% Q1 : Given parameters are Kp = Kd = Ki = 0
% T(s) = 0 ; System Function

clc;close all;clearvars;
Kp = 0; %Given parameters
Kd = 0;
Ki = 0;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);

%% Q2 Case I: Given parameters are Kp = 5 ; Kd = Ki = 0
%        40
%  ---------------- = T(s) ; System Function
%  (s^2 + 10s + 40)

clc;close all;clearvars;
Kp = 5; %Given parameters
Kd = 0;
Ki = 0;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);

%% Q2 Case II : Given parameters are Kp = 10 ; Kd = Ki = 0
%        80
%  ---------------- = T(s) ; System Function
%  (s^2 + 10s + 80)

clc;close all;clearvars;
Kp = 10; %Given parameters
Kd = 0;
Ki = 0;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);

%% Q3 Case I : Given parameters are Kd = 5; Kp = Ki = 0
%                40
%  --------------------------------- = T(s) ; System Function
%  (s+10.37) (s^2 - 0.3718s + 3.857)

clc;close all;clearvars;
Kp = 0; %Given parameters
Kd = 5;
Ki = 0;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);

%% Q3 Case II : Given parameters are Kd = 10; Kp = Ki = 0
%                80
%  -------------------------------- = T(s) ; System Function
%  (s+10.7) (s^2 - 0.6989s + 7.477)
clc;close all;clearvars;
Kp = 0; %Given parameters
Kd = 10;
Ki = 0;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);

%% Q4 Case I : Given parameters are Ki = 5; Kp = Kd = 0
%    40 s
%  -------- = T(s) ; System Function
%  s (s+50)

clc;close all;clearvars;
Kp = 0; %Given parameters
Kd = 0;
Ki = 5;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);

%% Q4 Case II : Given parameters are Ki = 10; Kp = Kd = 0
%    80 s
%  -------- = T(s) ; System Function
%  s (s+90)

clc;close all;clearvars;
Kp = 0; %Given parameters
Kd = 0;
Ki = 10;
PIDController = pid(Kp,Kd,Ki); 
PIDController.u = 'E';  %Input of PID Block
PIDController.y = 'PIDOut'; %Output of PID Block
GofS = zpk([],[0,-10],8); %The Open loop Transfer function
GofS.u = 'PIDOut';  %Input of Gofs
GofS.y = 'Cofs'; %Output of Gofs
Sum = sumblk('E = Rofs - Cofs'); %Calculation of Error
Tofs = connect(GofS,PIDController,Sum,'Rofs','Cofs'); %Creation of Closed Loop system

step(Tofs);
SysCharac = stepinfo(Tofs);