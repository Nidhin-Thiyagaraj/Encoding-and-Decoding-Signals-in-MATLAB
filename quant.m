function [y,levels] = quant(x,n)            %y - Quantized signal
                                            %levels - list of quantization levels
                                            %x - input signal
                                            %n - Number of bits per sample
A = max(x);
B = min(x);
stepSize = (A-B)/(2^n);                     % calculating step size
levels = [];
i = B + stepSize/2;
while(i<=A)                                 % loop to calculate list of quantization levels
    levels = [levels i];
    i = i + stepSize;
end
y = [];
for i = [1:length(x)]                       % loop to assign values of x to the nearest quantization level in y
    M = abs(levels - x(i));
    for j = levels
        if abs(j-x(i)) == min(M)
            y(i) = j;
        end
    end
end
end
