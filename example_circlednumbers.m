% some graph in 2D
[adj, XY] = bucky;
N = 30;
adj = adj(1:N,1:N);
XY = XY(1:N,1:2);

% plot edges
[xx yy] = gplot(adj, XY);
hFig = figure(); axis equal
line(xx, yy, 'LineStyle','-', 'Color','b', 'Marker','o', 'MarkerFaceColor','g')

% draw text near vertices
%xoff = 0.07; yoff = 0.03;     % optional offsets
xoff = 0.04; yoff = -0.06;     % optional offsets
str = strtrim(cellstr(num2str((1:N)')));
hTxt = text(XY(:,1)+xoff, XY(:,2)+yoff, str, ...
    'FontSize', 8, 'FontWeight','bold', ...
    'HorizontalAlign','right', 'VerticalAlign','bottom');

% draw circles around text
e = cell2mat(get(hTxt, {'Extent'}));
p1 = e(:,1:2) + e(:,3:4)./2 + repmat([0 1], length(e), 1);

hLine = line('XData',p1(:,1), 'YData',p1(:,2), ...
    'LineStyle','none', 'Marker','o', 'MarkerSize', 14, ...
    'MarkerFaceColor',[.35 .62 .95], 'MarkerEdgeColor','k');

uistack(hLine, 'down', 30)
% link circles position to text (on zoom and figure resize)
callbackFcn = @(o,e) set(hLine, ...
    'XData',cellfun(@(x)x(1)+x(3)/2,get(hTxt,{'Extent'})), ...
    'YData',cellfun(@(x)x(2)+x(4)/2+0.009,get(hTxt,{'Extent'})) );

set(zoom(hFig), 'ActionPostCallback',callbackFcn);
set(hFig, 'ResizeFcn',callbackFcn);

