function p = factor_digits(n)
  m = primes(max(factor(n)));
  p=arrayfun(@(x) sum(factor(n)==x), m(end:-1:1));
end