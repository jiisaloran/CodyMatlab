function ans = popularity(x)
[y,n,m]=unique(x);
k = histc(x,y);
[i,j]=sort(k,'descend');
y(j)