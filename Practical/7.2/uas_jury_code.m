%% Initialization

close all
clear
clc

%% Run Simulink Model

load('cf18-2021-06-22-15-50.mat')

%% Extract positions and directions

w1 = [1 ; -2 ; 1];
w2 = [2 ; -2 ; 1];

t = out.position.t.Data;
x = out.position.X.Data - w1(1);
y = out.position.Y.Data - w1(2);
z = out.position.Z.Data - w1(3);
e = sqrt(x.^2 + y.^2 + z.^2);

tl = [t(1) t(end)];
el = 0.1;
Em = [-el -el];
Ep = [el el];
xr = w2(1) - w1(1);
xo = xr + 0.3;
Xr = [xr xr];
Xo = [xo xo];

figure
grid on
hold all
ylim(3*[-el el])

plot(t, e, 'Color', [0.5 0.5 0.5], 'LineWidth', 2)
plot(t, x, 'r', 'LineWidth', 2)
plot(t, y, 'g', 'LineWidth', 2)
plot(t, z, 'b', 'LineWidth', 2)
plot(tl, Em, 'k--')
plot(tl, Ep, 'k--')

t1 = ginput(1);
t1 = t1(1);
plot([t1 t1], 2*[-el el], 'k--')
t2 = ginput(1);
t2 = t2(1);
plot([t2 t2], 2*[-el el], 'k--')

xlabel('time [s]')
ylabel('position [m]')
legend('error', 'x', 'y', 'z', sprintf('time: %.3f s', t2(1) - t1(1)))

figure
grid on
hold all
ylim([-0.5 xr + 0.5])

plot(t, x, 'r', 'LineWidth', 2)
plot(tl, Xr, 'k')
plot(tl, Xo, 'k--')

xlabel('time [s]')
ylabel('position [m]')
legend('x')

