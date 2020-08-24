function board = fill_board(tiles,nRows,nCols)
  [~,i] = sort(tiles,'descend');
  board = reshape(i(1:nRows*nCols),nRows,nCols);
end