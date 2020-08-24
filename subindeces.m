function idx = subindeces(lo, hi)
idx = [];
for ii=1:length(lo)
  idx = [idx lo(ii):hi(ii)];
end
