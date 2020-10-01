function r = ones_ratio(n)
s = dec2bin(n);
r = sum(double(s=='1'))/length(s);
end
