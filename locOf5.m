%Cody: 44342. Spot the First Occurrence of 5
function y = locOf5(x)
  if isvector(x)
    y = find(x==5);
    if isempty(y)
        y=0;
    end
  else
      y = zeros(1,size(x,1));
    [i,j]=find(x==5);
    [n,m,~]=unique(j);
    y(n) = i(m);
  end
end