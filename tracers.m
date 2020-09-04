% Matlab Cody
% Problem 970. Piecewise linear interpolation

function out = tracers(x, y)
% x is an Mx2 vector, and y is a row of M-1 numbers.
% Tracers linearly interpolates y(1) points between x(1,:) and x(2,:),
% followed by y(2) points between x(2,:) and x(3,:), and so on...
% The resultant output is a two column vector with consecutive
% duplicate points are removed.

out = [];
for ii = 1:length(y)
   o1 = linspace(x(ii,1), x(ii+1,1), y(ii));
   o2 = linspace(x(ii,2), x(ii+1,2), y(ii));
   if ii == 1
      out = [out; o1', o2'];
   else
      out = [out; o1(2:end)', o2(2:end)'];
   end
end

end