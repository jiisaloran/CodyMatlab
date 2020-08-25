function y = common_by_row(x)
  if isempty(x)
      y=[];
      return;
  end
  y=unique(x(1,:));
  for i=2:size(x,1)
      y = intersect(y,x(i,:));
  end
  if isempty(y)
      y=[];
  end
end
