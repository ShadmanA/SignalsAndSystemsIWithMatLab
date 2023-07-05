N = 100;
PulseWidth = 10;
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
z = conv(x,x);
t2 = [0:1:2*(N-1)];
figure;
plot(t2,z);
grid on;
axis([-10,30,-1,11])
xlabel('t');
ylabel('z(t)');
title('Figure 1: Convolution of z(t) = x(t)*x(t)');