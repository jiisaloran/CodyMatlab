function s1 = refcn(s1)
  %Matlab Cody 22: Remove the vowels
  v = 'bcdfghjklmnpqrstvxyz';
  for i=1:length(v)
      r = strfind(lower(s1),v(i));
      s1(r)=[];
  end
end