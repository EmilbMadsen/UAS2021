%% Creating plots for position

clc; clear all

load('hover5.mat')

position = out.position;

SP = ones(length(position),3);


    

position(:,1) = position(:,1);
position(:,2) = position(:,2)+2;
position(:,3) = position(:,3)-0.1;



figure()
subplot(1, 2, 1)
plot(out.time, position(:,1))
xlim([0 20])

subplot(1, 2, 2)
plot(out.time, position(:,2))
xlim([0 20])


figure()
plot(out.time, position(:,3))
grid
xlim([0 20])