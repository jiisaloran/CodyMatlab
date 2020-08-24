%Cody: Problem 564. How to subtract?
function Z = mysub(X,Y)
   Z = num2str(str2double(X)-str2double(Y),'%+i');
   %if ~strcmp(Z(1), '-')
   %   Z = ['+' Z];
   %end
end
