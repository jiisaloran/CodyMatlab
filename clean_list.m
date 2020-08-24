function names_out = clean_list(names_in)
names_out = {};
n = 0;
for i = 1:length(names_in)
   if ~any(contains(lower(names_out), lower(names_in(i))))
      n = n +1;
       names_out(n) = names_in(i);
   end
end
end
