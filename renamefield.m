%Cody: 86. Renaming a field in a structure array
function st = renamefield(st, oldField, newField) 
  for i = 1:length(st)
     st(i).(newField) = st(i).(oldField);
  end
  st = rmfield(st, oldField);
end