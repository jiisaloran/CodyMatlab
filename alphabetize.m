function alpha_list = alphabetize(list)
  for i = 1:length(list)
     S = cell2mat(list(i));
     l = strfind(S,' ');
     L{i} = [S(l(end)+1:end) ' ' S(1:l(end)-1)];
  end
  [~,k] = sort(L);
  alpha_list = list(k);
end
