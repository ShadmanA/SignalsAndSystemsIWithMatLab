r = @(t) t.*p(t);
p = @(t) 1.0.*((t>=0)&(t<1));

subplot(1,2,1);
plot (t, r(t));
title('B.2a');
xlabel('t');
ylabel('r(t) = t*p(t)');
axis([-1 2 -.1 1.1]);

 n = @(t) (r(t)+ r(-t+2));
 subplot(1,2,2);
 plot(t, n(t));
 title('B.2b');
 xlabel('t');
 ylabel('n(t) = r(t) + r(-t+2)');
 axis([-1 2 -.1 1.1]);
