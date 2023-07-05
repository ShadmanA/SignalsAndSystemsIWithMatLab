N = 100; PulseWidth = 5; %change between 5, 10, and 25 to check each FT
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xw = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
w = 2*pi*f;
figure(4);
subplot(2,1,1);
plot(f,fftshift(abs(Xw)));
grid on;
xlabel('t');
ylabel('Magnitude');
title('Figure 6: z(t) Magnitude Spectra');
subplot(2,1,2);
plot(f,fftshift(angle(Xw)));
grid on;
xlabel('t');
ylabel('Magnitude');
title('Figure 7: z(t) Phase Spectra');
