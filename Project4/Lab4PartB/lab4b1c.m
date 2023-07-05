%Decoder
carrier2 = osc(6000, 81520, 32000);
figure(9)
plot(carrier2)
title('Carrier Signal 2#');
Demod = Output.*carrier2;
figure(10)
MagSpect(Demod)
title('Demodulated Signal Frequency Domain');
recover_xspeech = conv(Demod, hLPF2500);
figure(11)
plot(recover_xspeech)
title('Decoded Signal');
figure(12)
MagSpect(recover_xspeech)
sound(recover_xspeech, 32000)
title('Decoded Signal Frequency Domain');