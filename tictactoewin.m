%Cody: Problem 44363. Is this is a Tic Tac Toe X Win?
function flagWin = your_fcn_name(M)
  if any(sum([M M' diag(M) diag(flip(M))])==3)
     flagWin = true;
  else
     flagWin = false;
  end
end
