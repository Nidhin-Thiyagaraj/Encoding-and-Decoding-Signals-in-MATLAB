function [y,levels] = quant(x,n)
A = max(x);
B = min(x);
stepSize = (A-B)/(2^n);
levels = [];
i = B + stepSize/2;
while(i<=A)
    levels = [levels i];
    i = i + stepSize;
end
y = [];
for i = [1:length(x)]
    M = abs(levels - x(i));
    for j = levels
        if abs(j-x(i)) == min(M)
            y(i) = j;
        end
    end
end
end