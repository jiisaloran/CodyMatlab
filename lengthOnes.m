function ans = lengthOnes(x)
    y = x == '1';
    max(diff(find([1 y==0 1])))-1; 
 end