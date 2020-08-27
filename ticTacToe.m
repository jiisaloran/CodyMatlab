% Matlab Cody
% Problem 58. Tic Tac Toe FTW
function wins = ticTacToe(a)

b = [];

a = reshape(a, 3, 3);
c = find(sum(a, 1)==2); % col
for i = c
   b = [b sub2ind([3 3], find(a(:,i) == 0), i)];
end
c = find(sum(a, 2)==2); % row
for i = c
   b = [b sub2ind([3 3], i, find(a(i,:) == 0))];
end

c = find(sum(diag(a))==2); % diag
for i = c
   p = find(diag(a) == 0);
   b = [b sub2ind([3 3], p, p)];
end

c = find(sum(diag(rot90(a)))==2); % diag-i
for i = c
   p = find(diag(rot90(a)) == 0);
   b = [b sub2ind([3 3], p, 4-p)];
end

if isempty(b)
   wins = 0;
else
   wins = sort(unique(b));
end
