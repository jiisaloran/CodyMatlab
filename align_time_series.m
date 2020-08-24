function [tn,d1n,d2n] = align_time_series(t1,d1,t2,d2)
lo=max([min(t1),min(t2)]);
hi=min([max(t1),max(t2)]);
tn=sort(unique([t1 t2]));
tn(tn<lo)=[];
tn(tn>hi)=[];

for ii = 1:length(tn)
   ix=find(tn(ii)==t1);
   if(ix)
      d1n(ii) = d1(ix);
   else
      fi = find(t1>tn(ii), 1);
      d1n(ii) = interp1([t1(fi-1) t1(fi)],[d1(fi-1) d1(fi)],tn(ii));
      %(d1(fi-1)+d1(fi))/2;
   end
end


for ii = 1:length(tn)
   ix=find(tn(ii)==t2);
   if(ix)
      d2n(ii) = d2(ix);
   else
      fi = find(t2>tn(ii), 1);
      d2n(ii) = interp1([t2(fi-1) t2(fi)],[d2(fi-1) d2(fi)],tn(ii));
   end
end

end