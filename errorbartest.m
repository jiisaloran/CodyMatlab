%errorbar test
%source: Jani Saloranta
%        Centre for Wireless Communications
%        University of Oulu
%licence: do what ever you want :)

x = 0:pi/13:2*pi;
y = -(exp(x))./(10*x).*sin(x);
y(1) = 0;

e = randn(1,length(x)).*abs(x-max(x)+1);
e2 = .8*e+(0.1*randn(1,length(x)));

eps=0.03;

%%
hfig1=figure;
subplot(3,1,1);
hold on;
hl = plot(x,y, 'k-');
he1 = errorbar(x-eps,y,e);
he2 = errorbar(x+eps,y,e2, 'r');
set(he1, 'LineStyle', 'none');
set(he2, 'LineStyle', 'none');
title('errorbar test')

%%
subplot(3,1,2);
hold on;
s1 = plot(x,y, 'k-');
se1 = plot([x;x]-eps, [y+e;y-e], 'b-');
se2 = plot([x;x]+eps, [y+e2;y-e2], 'r-');
title('make your own error lines');

%%
subplot(3,1,3);
hold on;
s2 = plot(x,y, 'k-');
se3 = plot([x;x]-eps, [y+e;y-e], 'b.-');
se4 = plot([x;x]+eps, [y+e2;y-e2], 'r.-');
set(se4, 'Color', 'm');
title('this way you can control markers on error bar ends');

%%

position = get(hfig1,'Position');
%outerpos = get(hfig1,'OuterPosition');
%borders = outerpos - position;
set(hfig1, 'Position', [position(1), max(10,position(2)-position(4)), position(3), 2*position(4)]);