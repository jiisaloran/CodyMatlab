function [p1,p2] = goldbach(n)
for i = 1:floor(sqrt(n))+1
    if isprime(i) && isprime(n-i)
        p1 = i;
        p2 = n-i;
        break;
    end
end
end