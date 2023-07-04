n=-20:20;
t=-300:1:300;
w2=pi/10;
x2=zeros(size(t));
Dn2=0.5 * sinc(n/2);

for i =1:length(n)
    x2= x2 + Dn1(i) * exp(1i*w2*n(i)*t);
end

figure(2);
plot (t,x2);
title('Reconstructed x2(t)');
xlabel('t');
ylabel('x2(t)');

figure

t2= (-5:5); %between -5 and 5
w2 = pi / 10;
X2 = 0;
for n = -5:5
   x2 = @(t) exp(-1i*w2*n*t);
   Dn_2 = (1/20)*integral(x2, -5, 5);
   X2 = X2 + Dn_2.*exp(1i*w2*n*t2);
end
subplot(2, 2, 1)
plot(-5:5,X2);
title('x2(t): Index range between -5 to 5');
xlabel('t');

t2b = (-20:20); %between -20 and 20
X2b = 0;
for n = -20:20
   x2 = @(t) exp(-1i*w2*n*t);
   Dn_2b = (1/20)*integral(x2, -5, 5);
   X2b = X2b + Dn_2b.*exp(1i*w2*n*t2b);
end
subplot(2, 2, 2)
plot(-20:20,X2b);
title('x2(t): Index range between -20 to 20');
xlabel('t');

t2c = (-50:50); %between -50 and 50
X2c = 0;
for n = -50:50
   x2 = @(t) exp(-1i*w2*n*t);
   Dn_2c = (1/20)*integral(x2, -5, 5);
   X2c = X2c + Dn_2c.*exp(1i*w2*n*t2c);
end
subplot(2, 2, 3)
plot(-50:50,X2c);
title('x2(t): Index range between -50 to 50');
xlabel('t');

t2d = (-500:500); %between -500 and 500
X2d = 0;
for n = -500:500
   x2 = @(t) exp(-1i*w2*n*t);
   Dn_2d = (1/20)*integral(x2, -5, 5);
   X2d = X2d + Dn_2d.*exp(1i*w2*n*t2d);
end
subplot(2, 2, 4)
plot(-500:500,X2d);
title('x2(t): Index range between -500 to 500');
xlabel('t');
