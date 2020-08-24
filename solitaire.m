function out = solitaire(deck, k)
  
for i = 1:k
  n = find(deck==27);
  if n<28
     deck = deck([1:n-1 n+1 n n+2:end]); 
  else
     deck = deck([1 n 2:end-1]);
  end
  
  m = find(deck==28);
  if m<27
     deck = deck([1:m-1 m+1 m+2 m m+3:end]); 
  elseif m == 27
      deck = deck([1 m 2:end-2 end]);
  else
      deck = deck([1 2 m 3:end-1]);
  end
  
  c = find(deck>26);
  deck = deck([c(2)+1:end c(1):c(2) 1:c(1)-1]);
  
  d = deck(end);
  if d==28
      d = 27;
  end
  deck = deck([d+1:end-1 1:d end]);
  
  out(i) = deck(deck(1));
  
end
     
end