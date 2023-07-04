n1 = @(t) n((1/2)*t);
subplot(1,2,1);
plot(t, n1(t));
title('B.3a');
xlabel('t');
ylabel('n1(t) = n((1/2)*t)');
axis([-1 2 -.1 1.1]);

n2 = @(t) n1(t+(1/2));
subplot(1,2,2);
plot(t, n2(t));
title('B.3b');
xlabel('t');
ylabel('n2(t) = n1(t+(1/2))');
axis([-1 2 -.1 1.1]);