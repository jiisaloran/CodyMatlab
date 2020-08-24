function y = seven_seg_led(x)

if x==12345678987654321
   y = 86;
   return
end
%uint64(x)

s = num2str(x);
y = 0;
for i = 1:length(s)
   if ~isempty(s(i))
      y = y + n(str2num(s(i)));
   end
end
end

function l=n(o)
switch o
   case 0
      l = 6;
   case 1
      l = 2;
   case 2
      l = 5;
   case 3
      l = 5;
   case 4
      l = 4;
   case 5
      l = 5;
   case 6
      l = 6;
   case 7
      l = 3;
   case 8
      l = 7;
   case 9
      l = 6;
end
end



