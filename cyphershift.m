function o = cyphershift(in, s)
  s = mod(s,length(in));
  if s>0
    o = [in(s+1:end) in(1:s)];
  else
      o=in;
  end
end