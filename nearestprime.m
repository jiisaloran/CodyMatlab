%Problem 44384. Find the nearest prime number
function y = nearestprime(x)

if isprime(x)
    y = x;
    return
end

k = 0;
while 1
    k = k+1;
    y = [x-k x+k];
    y = y.*(y>0);
    y = y(isprime(y));
    if y
        return
    end
end
