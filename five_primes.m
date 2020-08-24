function y = five_primes(n_min,n_max)

i = 0;
for p = n_min:n_max
   if isprime(p) && any(num2str(p)=='5')
      i = i+1;
      y(i) = p;
      if i == 5
         return;
      end
   end
end
y = -1;
end
