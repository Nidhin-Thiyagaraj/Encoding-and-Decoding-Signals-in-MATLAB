Fs = 1000; % Sampling Frequency
b = 3;     % Number of bits
f1 = 100; %Frequencies for sample signal
f2 = 50;
f3 = 30;
f4 = 10;
n = [0:1:Fs/4];
x = 1+2*sin(2*pi*f1*n/Fs) + 4*cos(2*pi*f2*n/Fs) + 3*cos(2*pi*f3*n/Fs) + 4*sin(2*pi*f3*n/Fs) + 2*cos(2*pi*f4*n/Fs);  %Sample signal
[q,l] = quant(x,b);                                                                                                 % q - Quantized signal
e = encod(q,b,l);                                                                                                   % e - Encoded signal
d = dec(e,b,l);                                                                                                     % d - Decoded signal
h = fir1(100, 150*2/Fs, 'low', blackman(101));                                                                      % Low pass filter with 150Hz cutoff frequency
y = filter(h, 1, d); 
subplot(4,1,1)
plot(n,x); title("Input signal"); xlabel("Time sample");
subplot(4,1,2)
plot(n,q); title("Encoded signal"); xlabel("Time sample");
subplot(4,1,3)
plot(n,d); title("Decoded signal"); xlabel("Time sample");
subplot(4,1,4)
plot(n,y); title("Reconstructed signal"); xlabel("Time sample");
