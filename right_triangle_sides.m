% Matlab Cody
% Problem 1103. Right Triangle Side Lengths (Inspired by Project Euler Problem 39)
% #Project Euler: https://projecteuler.net/problem=39
function c = right_triangle_sides(p)
c = {};
% from symmetry max side length = p/(2+sqrt(2))
  for a = 2:ceil(p/3.4142)
     % if b is integer: we have solution
     if mod(p*(p - 2*a), (2*(p - a))) == 0        
        b = p*(p - 2*a)/(2*(p - a));
        c(end+1) = {[a b p-a-b]};
     end
  end
end
