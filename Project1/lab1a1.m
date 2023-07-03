% Variables
t = -2:2;
f = @(t) exp(-t).*cos(2*pi*t);

%Figure 1.46
plot (t, f(t));
title('A.1');
xlabel('t');
ylabel('f(t)');
grid;