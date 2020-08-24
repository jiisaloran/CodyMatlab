function y = common_by_row(x)
  n = unique(x(:))';
  c = zeros(length(n),1);
  for i=1:length(n)
      for y=1:size(x,1)
          if any(n(i)==x(y,:))
            c(i) = c(i) + 1;
          end
      end
  end
  
  y = n(c/size(x,1)>.5);
  
  if isempty(y)
      y=[];
  end
end
