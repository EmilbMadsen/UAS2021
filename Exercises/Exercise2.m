%% Exercise 2.1
clc; clear; close all

%Defining constants:
m = 0.5;
L = 0.225;
k = 0.01;
b = 0.001;
D = [0.01 0 0;
     0 0.01 0;
     0 0 0.01];
Ixx = 3e-06;
Iyy = 3e-06;
Izz = 1e-05;
I = [Ixx 0 0;
     0 Iyy 0;
     0 0 Izz];
g = [0; 0; -9.81];
