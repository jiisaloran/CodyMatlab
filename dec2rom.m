

function romStr = dec2rom(n)
m = num2str(n, '%04.f');
romStr = '';

rom_num = {'M', 'MM', 'MMM', 'x', 'x', 'x', 'x', 'x', 'x'; 
    'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM';
    'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC';
    'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'};

for idx = 1:length(m)
    if str2num(m(idx)) > 0
        romStr = [romStr, rom_num{idx, str2num(m(idx))}];
    end
end

end

