%Cody: Problem 44360. Pentagonal Numbers
function [p,d] = pentagonal_numbers(l,u)
p=1;
i=1;
while p(end)<u
   i=i+1;
   p(i) = (3*i^2-i)/2;
end
p(end)=[];
p(p<l)=[];
d = ~mod(p,5);
end
