function b = targetSort(a,t)
  [~,i] = sort(abs(a-t),'descend');
  %b = wrev(a(i));
  b = a(i);
end