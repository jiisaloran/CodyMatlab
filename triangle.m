%Cody: 163. Love triangles
%Given a vector of lengths [a b c], determines whether a triangle with
%non-zero area (in two-dimensional Euclidean space, smarty!) could have
%sides of those lengths.

function tf = triangle(sides)
  [m,n] = max(sides); 
  if m<sum(sides(setdiff(1:3,n)))
     tf = true;
  else
     tf = false;
  end
end