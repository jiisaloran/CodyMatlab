function x = replace_nans(x)
  if isnan(x(1))
     x(1)=0;
  end
  x(isnan(x)) = x([isnan(x(2:end))]);
  if any(isnan(x))
    x = replace_nans(x);
  end
end
