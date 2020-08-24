function M = createMatrix(n,c)

M = false(n,n);
for i = 1:n 
   l = i+c;
   if l<=n
      M(i, (i+1):(i+c)) = true;
   else
      l1 = l-n;
      M(i, (i+1):end) = true;
      M(i, 1:l1) = true;
   end
end
  

  
  
  
%end
%% Check
A(1) = all(sum(M,1)==c);     % column sums equal to s
A(2) = all(sum(M,2)==c);     % row sums equal to s
A(3) = all(diag(M)==0);      % zeros on the diagonal
A(4) = islogical(M);         % logical matrix
A(5) = ndims(M)==2;          % 2D matrix
A(6) = all(size(M)==n);      % square matrix

%% Plot
figure
% circular layout
t = linspace(0, 2*pi, n+1)';
xy = [cos(t(1:end-1)) sin(t(1:end-1))];
subplot(121), spy(M)
subplot(122), gplot(M, xy, '*-'), axis image