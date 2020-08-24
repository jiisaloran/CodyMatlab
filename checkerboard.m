function a = checkerboard(n)
  a = zeros(n);
  a(1:2:n, 1:2:n) = 1;
  a(2:2:n, 2:2:n) = 1;
end