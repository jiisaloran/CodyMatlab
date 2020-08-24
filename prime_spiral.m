function M = prime_spiral(n)

%http://blogs.mathworks.com/cleve/2015/01/05/prime-spiral/
S = [];
for m = 1:n
    S = rot90(S,2);
    S(m,m) = 0;
    p = m^2-m+1;
    v = (m-1:-1:0);
    S(:,m) = isprime(p-v');
    S(m,:) = isprime(p+v);
end
if mod(n,2)==1
    S = rot90(S,2);
end

M = 0;
for m = (-n+1):n-1
    A = diag(S,m)';
    im = max(diff([0 (find(~(A>0)) ) numel(A) + 1 ]) - 1);
    if im>M
        M=im;
    end
    A = diag(rot90(S),m)';
    im = max(diff([0 (find(~(A>0)) ) numel(A) + 1 ]) - 1);
    if im>M
        M=im;
    end
    
end

end