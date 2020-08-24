%Problem 44345. MATLAB Counter Write a function f = counter(x0,b) to
%construct a counter handle f that counts with an initial value x0 and a
%step size b.

function f = counter(x,b)
f = @fk;

   function y = fk()
   y = x;
   x = y+b;
   end
end
