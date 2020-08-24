function x = solveSudokuRow(x)

  n = 1:10;
  i = n==[sort(x(:)') 10];
  x(x==0) = min(n(i))-1;
end
