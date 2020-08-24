function c = collatz(n)
c=n;
while c(end)~=1
    if mod(c(end),2)
        c(end+1)=c(end)*3+1;
    else
        c(end+1)=c(end)/2;
    end
end

end