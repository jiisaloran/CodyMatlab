%Cody: 44307. The Glass Half Full
function [g, f, t] = filltime(v, u, L)
l = [0 0 1 3*(1:(L-1))];
f = l(end);
g = sum(l(end:-3:1));
t = sum(l*v/u);
end