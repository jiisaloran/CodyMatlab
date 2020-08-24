%Cody: Problem 44339. Recaman Sequence - II
function y = RecamanII(n)
  y = n;
  i = 1;
  while 1
      if y(i)==1
          y = i;
          break;
      end
      i=i+1;
      t = y(i-1)-i+1;
      if t>0 && ~any(y==t)
          y(i)=t;
      else
          y(i)=y(i-1)+i-1;
      end
  end
end
