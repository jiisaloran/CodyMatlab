function y = RevCountSeq(x)
y = [];
for i = 1:2:length(x)
    y = [y x(i+1)*ones(1,x(i))];
end

