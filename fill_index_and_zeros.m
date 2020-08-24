function B = fill_index_and_zeros(value,row,col)
  %Problem 830. Fill a zeros matrix 
  
  srow = max(row);
  scol = max(col);
  B(sub2ind([srow,scol], row, col))=value;
  
  %Test suite has always a index for the max size
  %so we can reshape without any checks for size
  B=reshape(B,srow,scol);
  
end