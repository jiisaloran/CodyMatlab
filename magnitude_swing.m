function y = magnitude_swing(x)
%Problem 729. ASEE. 
%Flag largest magnitude swings as they occur
m = zeros(1,2);
for i = 1:length(x);
    if x(i)>m(1)
        y(i) = sign(x(i));
        m(1) = x(i);
    elseif x(i)<m(2)
        y(i) = sign(x(i));
        m(2) = x(i);
    else
        y(i)  = 0;
    end

end
end