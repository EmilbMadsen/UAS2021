clc; clear all; close all

%% Create plots for route

load('pos_final.mat')

figure()
plot3(out.pos.Data(:,1), out.pos.Data(:,2), out.pos.Data(:,3))
xlabel('X-direction [m]')
ylabel('Y-direction [m]')
zlabel('Z-direction [m]')
grid
title('Route for CF')