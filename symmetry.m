%Matlab Cody
%Problem 1451. Symmetry of vector
%Determine whether the vector is symmetric or not (vector could be even or odd in length).

function y = symmetry(x)
if all(x(1:floor(length(x)/2)) == x(end:-1:ceil(length(x)/2)+1))
   y = 1;
else
   y = 0;
end
