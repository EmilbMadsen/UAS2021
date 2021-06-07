%% Exercise 2.1
clc; clear; close all

%Defining constants:
m = 0.5;
L = 0.225;
k = 0.01;
b = 0.001;

Ixx = 3e-06;
Iyy = 3e-06;
Izz = 1e-05;
g = 9.81;


omega1 = 0;
omega2 = 10000;
omega3 = 0;
omega4 = 10000;




%Starting simulation
t_stop=10;
% sim('Komplet_ny_sim')
out = sim('Quadcopter_sim1');


figure()
plot3(out.x, out.y, out.z)
xlabel('x')
ylabel('y')
zlabel('z')
grid