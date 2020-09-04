% Matlab Cody
% Problem 602. Encode a simplified barcode

function out = barEncoder(in)
s = dec2bin(in);
y = [1 1 1];
for ii = 1:length(s)
   if strcmp(s(ii), '1')
      y = [y 0 0 0];
   else
      y = [y 0];
   end
   y(end+1) = 1;
end
out = repmat([y 1 1], [30, 1]);
end
