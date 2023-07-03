% Variables
t = -2:0.01:2;
f = @(t) exp(-t).*cos(2*pi*t);

%Figure 1.47
plot (t, f(t));
title('A.2');
xlabel('t');
ylabel('f(t)');
grid;