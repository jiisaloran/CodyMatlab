%Cody: Problem 44338. Recaman Sequence - I
function y = Recaman(x)
  y = 0;
  for i=2:x
      t = y(i-1)-i+1;
      if t>0 && ~any(y==t)
          y(i)=t;
      else
          y(i)=y(i-1)+i-1;
      end
  end
end
