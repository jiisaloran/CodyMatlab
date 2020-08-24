function i = firstNonZeros(x)
  %i=[2 1 2 3];
  [a,b] = ind2sub(size(x),find(x)');
  %u = unique(b);
  for k=1:size(x,2)
      c = (k==b);
      if ~any(c)
          i(k)=0;
      else
          i(k)=min(a(c));
      end
  end
  
end