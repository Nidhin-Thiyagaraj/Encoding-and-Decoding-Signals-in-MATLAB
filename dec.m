function Y = dec(Q,n,levels)
M = [];
R = length(Q)/n; %Number of rows in matrx
i = 1;
for i = 1:n
    M(1,i) = Q(i);
end
for i=n+1:length(Q)
    r = ceil(i/n);
    c = mod(i-1,n) + 1;
    M(r,c) = Q(i);
end
q = [];
for i = [1:R]
    s = 0;
    for j = [1:n]
        s = s + M(i,j)*2^(n-j);
    end
    s = s+1;
    q = [q s];
end
for i = q
    Y = levels(q);
end
end
