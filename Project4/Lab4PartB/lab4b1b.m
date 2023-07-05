conv1 = conv(xspeech, hLPF2000);
figure(5)
MagSpect(conv1)
title('Convolution of xspeech and hLPF2000');
carrier = osc(6000,80710,32000);
figure(6)
plot(carrier)
title('Carrier Signal');
Mod = conv1.*carrier;
figure(7)
MagSpect(Mod)
title('Modulated Signal Frequency Domain');
Output = conv(Mod, hChannel);
figure(8)
MagSpect(Output)
title('Encoded Signal Frequency Domain');
