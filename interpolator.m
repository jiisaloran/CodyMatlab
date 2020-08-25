function vb = interpolator(va, a, b)
% Given a value, va, where va is between a(1) and a(end) find the a(n),
% a(n+1) that flank it. Now interpolate the value, vb, such that it is
% proportionally between b(n) and b(n+1).

vb = mean( b([find(a<=va, 1, 'last') find(a>=va, 1)]) );
