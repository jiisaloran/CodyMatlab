function out_str = cellstr_joiner(in_cell, delim)
   for i=1:length(in_cell)-1
      in_cell{i}(end+1)=delim;
   end
   out_str = cell2mat(in_cell);
end