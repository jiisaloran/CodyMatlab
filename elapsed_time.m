function elapsed = elapsed_time(d1,d2)
  t1=str2num(regexprep(d1, '([/:])', ' '));
  t2=str2num(regexprep(d2, '([/:])', ' '));
  elapsed = sum([datenum(t2(1:3))-datenum(t1(1:3)) t2(4:6)-t1(4:6)].*[24 1 1/60 1/3600]);
end
