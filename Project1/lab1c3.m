t = 0 : 0.01 : 4;
for a = 1:2:7
    sa = @(t) exp(-2).*exp(-a*t).*cos(4*pi*t).*u(t);
    plot(t, sa(t));
    hold on;
end

title('C.3');
xlabel('t');
ylabel('sa(t)');
sz = size(sa);
grid;

hold off;