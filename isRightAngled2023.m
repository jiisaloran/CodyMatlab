function flag = isRightAngled2023(a, b, c)
  s=sort([a,b,c]).^2;
  flag=s(3)==s(1)+s(2);
  
end