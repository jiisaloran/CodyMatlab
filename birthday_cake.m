%Problem 44380. ASCII Birthday Cake
%note that name is a string not an char array
%e.g. name == "CODY"
function s = birthday_cake(name, n)
    r1 = ['   ' repmat('6 ', 1, n-1) '6' char(10)];
    r2 = ['   ' repmat('| ', 1, n-1) '|' char(10)];
    r3 = [' __' repmat('|_', 1, n) '_' char(10)];
    e = ['{' repmat(' ', 1, 2*n+3) '}' char(10)];
    b = ['{' repmat('_', 1, 2*n+3) '}' char(10)];
    p = n*2+3-strlength(name);
    c = ['{' repmat(' ',1,floor(p/2)) name repmat(' ',1,ceil(p/2)) '}' char(10)];
    
    s = strjoin([r1 r2 r3 e e c e b],'');
end

