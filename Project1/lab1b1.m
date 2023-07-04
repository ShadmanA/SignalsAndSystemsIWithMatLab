% Variables
t = (-1:0.01:2);
p = @(t) 1.0.*((t>=0)&(t<1));

plot(t,p(t));
title('B.1');
xlabel('t');
ylabel('p(t) = u(t) -u(t-1)');
axis([-1 2 -.1 1.1]);
grid;