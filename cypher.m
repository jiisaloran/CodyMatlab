function outStr = cypher(in, s)
    outStr = char(mod((double(in)-97+s),26)+97);
end