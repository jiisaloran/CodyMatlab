% Matlab Cody
% Problem 241. Project Euler: Problem 7, Nth prime
% What is the Nth prime number?
function y = euler007(x)
p = 3;
c = 1;
while 1
   if isprime(p)
      c = c + 1;
      if c==x
         y = p;
         return;
      end
   end
   p = p + 2;
end
