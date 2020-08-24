%Cody: 44289. Find two triangular numbers whose sum is input.
function y = twoTriangular(x)
s = [1];
while s(end)<x
   s = [s; nchoosek(length(s)+2,2)];
end
%for k = 1:length(s)
%   S(k,:) = s(k)+s;
%end

[i,j]=find(s+s'==x);
%for k = 1:length(i)
%   L(k) = abs(i(k)-j(k));
%end

%[~,m]=min(L);
[~,m] = min(abs(diag(i-j')));
y = sort([s(i(m)), s(j(m))]);

end