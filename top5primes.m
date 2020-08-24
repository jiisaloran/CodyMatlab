%Cody: 44352. The Top 5 Primes
function y = top5primes(x)
  q = sort(isprime(x).*x);
  if isvector(q)
      y = q(end:-1:end-4);
  else
    y = q(end:-1:end-4,:);
  end
  y(y==0)=NaN;
end