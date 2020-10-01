function y = bit_reverse(x, n)
  s = dec2bin(x, n);
  y = bin2dec(s(end:-1:1));
end