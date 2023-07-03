%Problem C.1
t = -1:0.001:5;

u = @(t) 1.0*(t>=0);
h1 = @(t) exp(t/5).*u(t);
h2 = @(t) 4*exp(-t/5).*u(t);
h3 = @(t) 4*exp(-t).*u(t);
h4 = @(t) 4*(exp(-t/5) - exp(-t)).*u(t);

plot(t, h1(t));
hold on;
plot(t, h2(t));
plot(t, h3(t));
plot(t, h4(t));
xlabel('t');
ylabel('h(t)');
legend('h1', 'h2', 'h3', 'h4');

hold off;

%Problem C.2
%Lambda1 = 1/5
%Lambda2 = -1/5
%Lambda3 = -1
%Lambda4 = -1/5 and -1