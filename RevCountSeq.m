function y = RevCountSeq(x)
y = [];
while x
    y = [y x(2)*ones(1, x(1))];
    x(1:2) = [];
end
