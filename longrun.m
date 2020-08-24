%Cody: 672. Longest run of consecutive numbers
function val=longrun(a)
  i = double((diff(a)==0));
  if ~any(i)
      val = a;
      return
  end
  
  s(1)=i(1);
  for j = 2:length(i)
      if i(j)==0
          s(j) = 0;
      else
          s(j) = s(j-1)+i(j);
      end
  end
  m = find(s==max(s));
  val = a(m);

end
