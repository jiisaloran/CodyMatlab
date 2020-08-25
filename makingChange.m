function b = makingChange(a)
c = [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01];
for i = 1:length(c)-1
    b(i)=floor(a/c(i));
    a=a-b(i)*c(i);
end
b(i+1) = round(100*a);
