function t = isbalanceparenth(s)
   c = cumsum((s=='(') - (s==')'));
   t = all(c>=0) && (c(end)==0);
end