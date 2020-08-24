function a = bullseye(n)
for i = 1:n
    a(i,i:n-i+1)=(n+1)/2-i+1;
end
a=a+a';
a=a+rot90(fliplr(a)');
a=a-tril(triu(a))./2-rot90(tril(triu(a)))/2;
a((end+1)/2,(end+1)/2)=1;