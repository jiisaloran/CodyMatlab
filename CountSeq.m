function y = CountSeq(x)
% CODY Problem 55. Counting Sequence
ii=0;
while x
   ii = ii+1;
   ix = find(diff(x));
   if ix
      y(2*ii-1:2*ii) = [ix(1), x(1)];
   else
      y(2*ii-1:2*ii) = [length(x), x(1)];
   end
   x(1:y(2*ii-1))=[];
end
