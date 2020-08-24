function b = makingChange(a)
c = [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.009999];
ic = 0;
b = zeros(1,12);
while a>=0.009
   ic = ic + 1;
   s = floor(a/c(ic));
   if s
      a = a - c(ic)*s;
      b(ic) = s;
   end
end
    
end
   