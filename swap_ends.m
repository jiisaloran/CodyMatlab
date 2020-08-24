function A = swap_ends(A)
  if length(A)>1
     A = A(:,[end 2:end-1 1]);
  end
end