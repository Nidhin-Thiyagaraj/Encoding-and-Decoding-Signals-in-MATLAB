function Y = dec(Q,n,levels)                                  %Q - Quantized signal
                                                              %n - number of bits per sample
                                                              %levels - List of quantization levels
M = [];                                                       %M - Matrix to contain the binary representation of each sample in individual rows       
R = length(Q)/n;                                              %Number of rows in matrx
i = 1;
for i = 1:n
    M(1,i) = Q(i);                                            %Assigning first row of matrix                              
end
for i=n+1:length(Q)
    r = ceil(i/n);
    c = mod(i-1,n) + 1;
    M(r,c) = Q(i);                                            %Assigning binary values to matrix M
end
q = [];                                                       %Initializing list to store the index of quantization level for each sample
for i = [1:R]
    s = 0;
    for j = [1:n]
        s = s + M(i,j)*2^(n-j);
    end
    s = s+1;
    q = [q s];
end
Y = levels(q);                                               %Calculating the final decoding signal by mapping with the quantization level list 
end
