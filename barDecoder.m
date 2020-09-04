% Matlab Cody
% Problem 603. Decode a simplified barcode

function out = barDecoder(im)

ii = 4;
s = '';
while 1
   if im(ii+1) == 1
      s = [s '0'];
      ii = ii + 2;
   else
      s = [s '1'];
      ii = ii + 4;
   end
   if im(ii) == 1
      break;
   end
end
out = bin2dec(s);
end
