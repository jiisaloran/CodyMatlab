function y = VanEcksSequence(n)
    s = [0 0];
    for i = 3:n
        f = find(s(1:i-2)==s(i-1), 1, 'last');
        if isempty(f)
            s(i) = 0;
        else
            s(i) = i-f-1;
        end
    end
  y = s(n);
end