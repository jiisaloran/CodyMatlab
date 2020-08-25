function y = which_doors_open(n)
  D = zeros(n,1);
  for v = 1:n
    D(v:v:n) = D(v:v:n)+1;
  end
  y = find(mod(D,2))';
  
  % or with little brain work:
  % y = (1:sqrt(n)).^2;
end