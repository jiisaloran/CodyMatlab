% Matlab Cody
% Problem 1748. Ripping numbers apart!
function out = numbersRip(x)
    l = num2str(x);
    for i = 1:size(l,1) 
       for j = 1:size(l,2) 
         s(i,2*j-1) =  l(i,j);
         s(i,2*j) = ' ';
       end
       out{i,1} = str2num(s(i,:));
    end
end
