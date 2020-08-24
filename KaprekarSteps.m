function y = KaprekarSteps(x)
y = 0;
while x~=6174
   y = y+1;
   if x==0
      y = inf;
      return;
   end
   a = sort(num2str(x, '%04d'));
   x = str2num(a(end:-1:1)) - str2num(a);
   %disp([num2str(y) ')  ' (a(end:-1:1)) '-' (a) '=' num2str(x)])
end
end