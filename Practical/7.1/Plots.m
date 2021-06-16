%% Plots of route
clc; clear all; close all

load('pos_real.mat')

figure()
plot3(out.pos.Data(:,1), out.pos.Data(:,2), out.pos.Data(:,3))
xlabel('X-direction')
ylabel('Y-direction')
zlabel('Z-direction')
title('Route for 7.1')
grid

