function y = pascalTri(n)
for i=1:n+1
    y(i)=nchoosek(n,i-1);
end
end