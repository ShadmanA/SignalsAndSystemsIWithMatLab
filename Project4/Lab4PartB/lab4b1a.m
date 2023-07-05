load('Lab4_Data.mat');

figure(1)
plot(xspeech)
title('xspeech');

figure(2)
MagSpect(hChannel)
title('hChannel Freq Domain');

figure(3)
MagSpect(hLPF2000)
title('hLPF2000 Freq Domain');

figure(4)
MagSpect(hLPF2500)
title('hLPF2500 Freq Domain');
