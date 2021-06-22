%% Creating plots for position

clc; clear all; close all;

load('hover1_2.mat')

position = out.position;

SP = ones(length(position),3);
    

position(:,1) = position(:,1);
position(:,2) = position(:,2)+2;
position(:,3) = position(:,3)-0.1;

figure()
subplot(1, 2, 1)
plot(out.time, position(:,1))
grid on
title('')
xlabel('Time (s)')
ylabel('X-position (m)')
xlim([5 15])

subplot(1, 2, 2)
plot(out.time, position(:,2))
grid on
xlabel('Time (s)')
ylabel('Y-position (m)')
xlim([5 15])


figure()
plot(out.time, position(:,3))
grid on
xlabel('Time (s)')
ylabel('Z-position (m)')
xlim([5 15])

figure()
plot(out.position(1:501,1), position(1:501,2))
grid on
xlabel('X-position (m)')
ylabel('Y-position (m)')



%%
%Graphs for error in each direction
test = out.position;
test(:,1) = test(:,1);
test(:,2) = test(:,2)+2;
test(:,3) = test(:,3)-0.1;

for i = 1:length(SP(1,:))
    test(:,i) = SP(1,i)-test(:,i); 
end

figure()
plot(out.time(1:501), test(1:501,1))
grid on
ylabel('X-Error (m)')
xlabel('Time (s)')

figure()
plot(out.time(1:501), test(1:501,2))
grid on
ylabel('Y-Error (m)')
xlabel('Time (s)')

figure()
plot(out.time(1:501), test(1:501,3))
grid on
ylabel('Z-Error (m)')
xlabel('Time (s)')




%% PART 2
% Creating plots for position
clc; clear all; close all;

load('hover1_2.mat')
%%

position = out.position;

SP = ones(length(position),3);
    

position(:,1) = position(:,1);
position(:,2) = position(:,2)+2;
position(:,3) = position(:,3)-0.1;



figure()
subplot(1, 2, 1)
plot(out.time, position(:,1))
grid on
title('')
xlabel('Time (s)')
ylabel('X-position (m)')
xlim([0 16])

subplot(1, 2, 2)
plot(out.time, position(:,2))
grid on
xlabel('Time (s)')
ylabel('Y-position (m)')
xlim([0 16])


figure()
plot(out.time, position(:,3))
grid on
xlabel('Time (s)')
ylabel('Z-position (m)')
xlim([0 16])

figure()
plot(position(1:430,1), position(1:430,2))
grid on
ylabel('Y-position (m)')
xlabel('X-position (m)')


%% PART 2 ERROR
%Graphs for error in each direction
clc; clear all; close all;

load('hover1_2.mat')

test = out.position;
test(:,1) = test(:,1);
test(:,2) = test(:,2)+2;
test(:,3) = test(:,3)-0.1;


SP_start = out.SP(:,1);
SP_end = out.SP(:,end);
SP_start(2) = SP_start(2) + 2;
SP_end(2) = SP_end(2) + 2;

%Finding error for the first part
for i = 1:length(SP_start)
    test(1:225,i) = SP_start(i)-test(1:225,i); 
end
%Finding error for the second part
for i = 1:length(SP_end)
    test(226:end,i) = SP_end(i)-test(226:end,i); 
end


figure()
plot(out.time(1:end), test(1:end,1),out.time(1:end),out.SP(1,:),out.time(1:end), -0.3.* ones(length(out.time(1:end)),1),'--')
grid on
ylabel('X-Error (m)')
xlabel('Time (s)')
legend('Error on the x-axis','Set point x-coordinate','Max overshoot on x-axis')
ylim([-0.5 3])
xlim([0 16])


figure()
plot(out.time(1:end), test(1:end,2))
grid on
ylabel('Y-Error (m)')
xlabel('Time (s)')

figure()
plot(out.time(1:end), test(1:end,3))
grid on
ylabel('Z-Error (m)')
xlabel('Time (s)')




