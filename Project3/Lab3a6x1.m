n=-20:20;
t=-300:1:300;
w1=pi/10;

x1=zeros(size(t));
Dn1=((n==-3).*(1/2))+((n==-1).*(-1/4j))+((n==1).*(1/4j))+((n==3).*(1/2));

for i =1:length(n)
x1= x1 + Dn1(i) * exp(1i*w1*n(i)*t);
end

figure(1);
plot (t,x1);
title('Reconstructed x1(t)');
xlabel('t');
ylabel('x1(t)');


ta = (-5:5); %between -5 and 5
w1 = pi / 10;
X1 = 0;
for n = -5:5
   Dn_1 = (0.5.*sinc(3-n))+(0.5.*sinc(3+n))+((1./(4.*1i)).*sinc(1-n))-((1./(4.*1i)).*sinc(1+n));
   X1 = X1 + Dn_1.*exp(1i*w1*n*ta);
end
subplot(2, 2, 1)
plot(-5:5,X1);
title('x1(t): Index range between -5 to 5');
xlabel('t')

tb = (-20:20); %between -20 and 20
X1b = 0;
for n = -20:20
   Dn_1b = (0.5.*sinc(3-n))+(0.5.*sinc(3+n))+((1./(4.*1i)).*sinc(1-n))-((1./(4.*1i)).*sinc(1+n));
   X1b = X1b + Dn_1b.*exp(1i*w1*n*tb);
end
subplot(2, 2, 2)
plot(-20:20,X1b);
title('x1(t): Index range between -20 to 20');
xlabel('t');

tc = (-50:50); %between -50 and 50
X1c = 0;
for n = -50:50
   Dn_1c = (0.5.*sinc(3-n))+(0.5.*sinc(3+n))+((1./(4.*1i)).*sinc(1-n))-((1./(4.*1i)).*sinc(1+n));
   X1c = X1c + Dn_1c.*exp(1i*w1*n*tc);
end
subplot(2, 2, 3)
plot(-50:50,X1c);
title('x1(t): Index range between -50 to 50');
xlabel('t');

td = (-500:500); %between -500 and 500
X1d = 0;
for n = -500:500
   Dn_1d = (0.5.*sinc(3-n))+(0.5.*sinc(3+n))+((1./(4.*1i)).*sinc(1-n))-((1./(4.*1i)).*sinc(1+n));
   X1d = X1d + Dn_1d.*exp(1i*w1*n*td);
end
subplot(2, 2, 4)
plot(-500:500,X1d);
title('x1(t): Index range between -500 to 500');
xlabel('t');
