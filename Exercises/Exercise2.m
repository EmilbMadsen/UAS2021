%% Exercise 2.1
clc; clear; close all

%Defining constants:
m = 0.5;
L = 0.225;
k = 0.01;
b = 0.001;

Dx = 0.01;
Dy = 0.01;
Dz = 0.01;

Ixx = 3e-06;
Iyy = 3e-06;
Izz = 1e-05;
g = 9.81;

% omega1 = 10000;
% omega2 = 0;
% omega3 = 10000;
% omega4 = 0;

phiDegree = 0;
thetaDegree = 0;
psiDegree = 0; 

%xSP = 1;
%ySP = 0;
zSP = 1;
phiSP = phiDegree*pi/180;
thetaSP = thetaDegree*pi/180;
psiSP = psiDegree*pi/180;



%Starting simulation
t_stop = 10;
out = sim('Quadcopter_simLINEARPID');
% out = sim('Quadcopter_simPID');



figure()
plot3(out.x, out.y, out.z)
xlabel('x')
ylabel('y')
zlabel('z')
title('Position of UAV')
grid


figure()
subplot(1, 3, 1)
plot(out.t, out.phi*180/pi)
xlabel('time [s]')
ylabel('Roll phi [degree]')
grid

subplot(1, 3, 2)
plot(out.t, out.theta*180/pi)
xlabel('time [s]')
ylabel('Pitch theta [degree]')
grid

subplot(1, 3, 3)
plot(out.t, out.psi*180/pi)
xlabel('time [s]')
ylabel('Yaw psi [degree]')
grid

sgtitle('Roll, Pitch, Yaw') 

% figure()
% plot(out.t, out.z)
% xlabel('time [s]')
% ylabel('Z-direction [m]')
% grid

