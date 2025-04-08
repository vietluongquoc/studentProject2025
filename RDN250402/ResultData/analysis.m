clear all; clc;
dt = 0.001;
t = 0:dt:5;
load('results200000_4');
AZ1 = outAZ;
Z1 = outZ1;

load('results40000_39');
AZ2 = outAZ;
Z2 = outZ1;

figure(1)
hold on
plot(t, AZ1)
plot(t, AZ2)
hold off

figure(2)
hold on
plot(t, Z1)
plot(t, Z2)
hold off