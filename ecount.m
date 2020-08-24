function ct = ecount(v,e)
% Problem 367. Specific Element Count
  ct = sum((v==e)+isnan(v).*isnan(e));
end