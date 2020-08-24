function tf = isPangram(s)
 
  if sum(unique(regexprep(lower(s), '((?![a-z]).)*', ''))) == 2847
      tf = 1;
  else
      tf = 0;
  end

  %tf = ~isempty(strfind(unique(lower(s)),'a':'z'));
  
end

