function out = MatrixIndices(A, thresh)
  i=A(:)>thresh;
  v=1:numel(A);
  out=v(i);
end