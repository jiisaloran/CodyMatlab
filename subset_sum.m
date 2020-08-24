function ind = subset_sum(v,n)
 
   m = dec2base(0:2^length(v)-1, 2)-'0';
   for ii=2:size(m,1)
      ind = find(m(ii,:));
      if sum(v(ind))==n
         return
      end
   end

   ind = [];
end
