t = (-2:0.01:2);
u = @(t) 1.0.*(t>=0);
f = @(t) exp(-2*t).*cos(4*pi*t);
g = @(t) f(t).*u(t);

plot(t,g(2*t+1));
title('C.1');
xlabel('t');
ylabel('g(2t+1)');
grid;