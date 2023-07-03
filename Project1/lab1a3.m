% Variables
t = -2:2;
f = @(t) exp(-t).*cos(2*pi*t);

%Figure 1.46
subplot (1,2,1)
plot (t, f(t));
title('A.1');
xlabel('t');
ylabel('f(t)');
grid;

t = -2:0.01:2;

%Figure 1.46
subplot (1,2,2)
plot (t, f(t));
title('A.2');
xlabel('t');
ylabel('f(t)');
grid;