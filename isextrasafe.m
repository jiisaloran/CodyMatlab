%Cody: Problem 44385. Extra safe primes
function tf = isextrasafe(x)
if ~isprime(x)
   tf = false;
   return
end
p = factor(x-1);
if length(p)~=2
   tf = false;
else
   if length(factor(p(2)-1))==2
      tf = true;
   else
      tf = false;
   end
end
end

