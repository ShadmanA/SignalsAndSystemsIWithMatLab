n=-20:20;
t=-300:1:300;
w3=pi/20;
x3=zeros(size(t));
Dn3=0.25 * sinc(n/4);

for i =1:length(n)
x3= x3 + Dn1(i) * exp(1i*w3*n(i)*t);
end

figure(3);
plot (t,x3);
title('Reconstructed x3(t)');
xlabel('t');
ylabel('x3(t)');

figure

t3 = (-5:5); %between -5 and 5
w3 = pi / 10;
X3 = 0;
for n = -5:5
   x3 = @(t) exp(-1i*w3*n*t);
   Dn_3 = (1/40)*integral(x3, -5, 5);
   X3 = X3 + Dn_3.*exp(1i*w3*n*t3);
end
subplot(2, 2, 1)
plot(-5:5,X3);
title('x3(t)');
title('x3(t): Index range between -5 to 5');
xlabel('t');

t3b = (-20:20); %between -20 and 20
X3b = 0;
for n = -20:20
   x3 = @(t) exp(-1i*w3*n*t);
   Dn_3b = (1/40)*integral(x3, -5, 5);
   X3b = X3b + Dn_3b.*exp(1i*w3*n*t3b);
end
subplot(2, 2, 2)
plot(-20:20,X3b);
title('x3(t): Index range between -20 to 20');
xlabel('t');

t3c = (-50:50); %between -50 and 50
X3c = 0;
for n = -50:50
   x3 = @(t) exp(-1i*w3*n*t);
   Dn_3c = (1/40)*integral(x3, -5, 5);
   X3c = X3c + Dn_3c.*exp(1i*w3*n*t3c);
end
subplot(2, 2, 3)
plot(-50:50,X3c);
title('x3(t): Index range between -50 to 50');
xlabel('t');

t3d = (-500:500); %between -500 and 500
X3d = 0;
k = 0;
for n = -500:500
   x3 = @(t) exp(-1i*w3*n*t);
   Dn_3d = (1/40)*integral(x3, -5, 5);
   X3d = X3d + Dn_3d.*exp(1i*w3*n*t3d);
   k = k + 1;
end
subplot(2, 2, 4)
plot(-500:500,X3d);
title('x3(t): Index range between -500 to 500');
xlabel('t');
