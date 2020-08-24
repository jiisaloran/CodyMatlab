function y = remove_average_vectorized(x)

%     % This works but is too slow.
%     for row=1:size(x,1)
%       row_average=mean(x(row,:));
%       for col=1:size(x,2)
%         x(row,col)=x(row,col)-row_average; 
%       end
%     end
%   y=x;

  y = x-mean(x,2)*ones(1,size(x,2));
  
end