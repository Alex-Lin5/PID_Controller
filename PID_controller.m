%% https://www.section.io/engineering-education/pid-controllers-using-matlab/
clear all
clc
% % The transfer function variables. We have the values for the numerator 
% % and the denominator
% num = [ 1 ];
% den = [ 1 3 1];
% 
% % We denote the transfer function as tf.
% Gp = tf(num, den);  % setting the transfer function.
% H = 1;   % feedback transfer function. It shows the expected unit response.
% 
% M = feedback( Gp, H);  %feedback of the plant.
% % step(M)     %step response
% hold on
% grid on

%% 3.a
% The transfer function variables. We have the values for the numerator 
% and the denominator
num = [ 1 ];
den = [ 1 3 1];

% We denote the transfer function as tf.
Gp = tf(num, den);  % setting the transfer function.
H = 1;   % feedback transfer function. It shows the expected unit response.

% Kp = 4;   % proportional constant
% Ki = 0;    % integral constant
% Kd = 0;    % derivative constant
% 
% Gc = pid(Kp,Ki,Kd);  % the contoller.
% 
% Mc = feedback(Gc*Gp, H);  %transfer function with control.
% step(Mc)    %step response of the transfer function with control.
% hold on
% grid on

%% 3.b
% Kp = 5;   % proportional constant
% Ki = 0;    % integral constant
% Kd = 0;    % derivative constant
% 
% Gc = pid(Kp,Ki,Kd);  % the contoller.
% 
% Mc = feedback(Gc*Gp, H);  %transfer function with control.
% step(Mc)    %step response of the transfer function with control.
% hold on
% grid on
%% 3.c
Kp = 3;   % proportional constant
Ki = 0.5;    % integral constant
Kd = -2;    % derivative constant

Gc = pid(Kp,Ki,Kd);  % the contoller.

Mc = feedback(Gc*Gp, H);  %transfer function with control.
step(Mc)    %step response of the transfer function with control.
hold on
grid on

