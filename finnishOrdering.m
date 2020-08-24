function b = finnishOrdering(a)
   v = [8 2 3 6 4 0 7 5 9 1];
   j = [6 10 2 3 5 8 4 7 1 9];
   b = zeros(1,length(a));
   for ii=1:length(a)
      b(ii) = j(a(ii)+1);
   end
   [q,~]=sort(b);
   b=v(q);
end