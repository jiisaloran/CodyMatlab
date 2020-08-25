function A = binary_numbers(n)
A = zeros(2^n, n);
for i = 0:2^n-1
  s = str2num(cell2mat(arrayfun(@(x) [x ' '], dec2bin(i), 'UniformOutput', 0)));
  %disp(['i=' num2str(i) '  s = ' num2str(s) '  (' num2str(length(s)) ')']);
  A(i+1, n-length(s)+1:n) = s;
end
