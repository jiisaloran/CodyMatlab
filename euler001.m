function y = euler001(x)
  %X = 1:(x-1);
  %y = sum(unique([X(mod(X,3)==0) X(mod(X,5)==0)]));
  
  y = sum(unique([3:3:x-1 5:5:x-1]));
  
  
end