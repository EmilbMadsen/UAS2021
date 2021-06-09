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

omega1 = 10000;
omega2 = 0;
omega3 = 10000;
omega4 = 0;



%Starting simulation
t_stop=10;
% sim('Komplet_ny_sim')
out = sim('Quadcopter_simLINEAR');


figure(1)
plot(out.t, out.z)
xlabel('x')
grid
title('Position of UAV')

figure(2)
subplot(1, 3, 1)
plot(out.t, out.phi)
xlabel('time [s]')
ylabel('Roll phi [rad]')
grid

subplot(1, 3, 2)
plot(out.t, out.theta)
xlabel('time [s]')
ylabel('Pitch theta [rad]')
grid

subplot(1, 3, 3)
plot(out.t, out.psi)
xlabel('time [s]')
ylabel('Yaw psi [rad]')
grid

sgtitle('Omega = [10000, 0, 10000, 0]^T') 


