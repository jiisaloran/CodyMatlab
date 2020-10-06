% Matlab Cody
% Problem 2157. Multiplication

function result = muldif(x,y)
  S = zeros(length(y), length(x)+length(y)-1);
  for ii = 1:length(y)
     S(ii,length(y)-ii+1:length(y)-ii+length(x)) = x * y(end+1-ii);
  end
  if any(size(S)==1)
     result = S;
  else
     result = sum(S);
  end
end
