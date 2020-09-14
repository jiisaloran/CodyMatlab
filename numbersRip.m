% Matlab Cody
% Problem 1748. Ripping numbers apart!
function out = numbersRip(x)
    for i = size(x,1):-1:1
       out{i,1} = strrep(num2str(x(i,:)), ' ', '') - '0';
    end
end
