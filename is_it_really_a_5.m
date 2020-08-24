%Cody: Problem 44306. Is it really a 5?
function tf = is_it_really_a_5(n)

tf = 0;
for r = 1:ceil(log10(n)/3)
   t = floor(mod(n/(10^(3*(r-1))),1e3));
   
   if floor(t/100)==5 %5xx
      tf = 1;
      return
   end
   
   if mod(t,100)==15 %x15 no
      continue
   end
   
   if mod(t,10) == 5 %xx5 but no 15
      tf = 1;
      return
   end
end

end
