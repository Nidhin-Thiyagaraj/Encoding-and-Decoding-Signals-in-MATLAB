function Q = encod(y,n,levels)
q = [];
for i = [1:length(y)]
    for j = [1:length(levels)]
        if levels(j) == y(i)
            q(i) = j-1;
        end
    end
end
Q = [];
for i = q
    s = dec2bin(i,n);
    b = [];
    for j = s
        b = [b str2num(j)];
    end
    Q = [Q b];
end
end