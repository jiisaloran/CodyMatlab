function A = binary_numbers(n)
for i = 1:2^n
	a = num2str(dec2bin(i-1,n));
	for j = 1:n
	 A(i,j) = str2num(a(j));
	end
end
