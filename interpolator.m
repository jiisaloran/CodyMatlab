function vb = interpolator(va, a, b)
% Given a value, va, where va is between a(1) and a(end) find the a(n),
% a(n+1) that flank it. Now interpolate the value, vb, such that it is
% proportionally between b(n) and b(n+1).

i1 = va>=a;
i2 = va<=a;
%vb = b(i1&i2)
vb = mean([max(b(i1)) min(b(i2))]);
