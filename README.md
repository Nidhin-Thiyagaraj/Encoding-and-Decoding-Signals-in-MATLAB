# Encoding-and-Decoding-Signals-in-MATLAB
The given signal is quantized and encoded into a string of binary digits and is finally decoded and filtered to reconstruct the original signal. 

Quantization :
The range of the signal is first divided into a number of quantization levels based on the minimum and maximum value of the input signal and the number of bits allocated per sample of the encoded signal. As the number of bits increases, the difference between the original and quantized signal narrows down and the quantized signal becomes a more accurate representation of the input signal
The step size (difference between successive quantization levels) is found as [max(n)-min(x)]/(2^n)

Encoding :
In this process, the quantized signal is converted into a sequence of binary digits. Each quantization value is assigned a binary value of n bits. 

Decoding :
The decoder which is present on the receiver side of the system, converts the received binary digits into a signal which is similar to the quantized version of the original signal. Decoding is thus the exact inverse of encoding.

Reconstruction :
The decoded signal which is quantized in nature can be converted bacck into a discrete time signal with continuous amplitude by making use of a smoothening filter (low pass).
