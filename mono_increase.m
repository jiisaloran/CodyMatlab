function tf = mono_increase(x)
if any(diff(x)<=0)
  tf = false;
else
  tf = true;
end
end
