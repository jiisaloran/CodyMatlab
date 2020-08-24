function area = triangle_sequence(n)
k = [25 41];

% the second triangle is a right-angle triangle whose
% second longest side is the hypotenuse of the first triangle,
% and whose shortest side is the same length as the second longest side of the first triangle

for i = 3:n
    k(i) = [k(i-2)+k(i-1)];
end

area = k(n);

end
