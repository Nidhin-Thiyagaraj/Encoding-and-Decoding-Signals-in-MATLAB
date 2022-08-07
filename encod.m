function Q = encod(y,n,levels)                     %y - quantized signal as input
                                                   %n - number of bits per sample
                                                   %levels - list of quantization levels
q = [];
for i = [1:length(y)]
    for j = [1:length(levels)]
        if levels(j) == y(i)                       
            q(i) = j-1;                            %Assigning index to quantization levels corresponding to quantized samples in input signal
        end
    end
end
Q = [];
for i = q
    s = dec2bin(i,n);
    b = [];
    for j = s
        b = [b str2num(j)];                       %Converting the quantization index into binary value and storing in a list bit by bit
    end
    Q = [Q b];
end
end
