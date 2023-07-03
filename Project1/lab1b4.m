n3 = @(t) n(t+(1/4));
subplot(1,2,1);
plot (t, n3(t));
title('B.4a');
xlabel('t');
ylabel('n3(t) =n(t+(1/4))');
axis([-1 2 -.1 1.1]);

n4 = @(t) n3((1/2)*t);
subplot(1,2,2);
plot (t, n4(t));
title('B.4b');
xlabel('t');
ylabel('n4(t) =n3((1/2)*t)');
axis([-1 2 -.1 1.1]);