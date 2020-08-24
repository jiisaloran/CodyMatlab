clear all;
close all hidden;

%paperwhite=[241, 240, 235]./255;
X=[0:0.1:4]; 
Y=1-exp(-[X].^2./2);
figure;
B=plot(X,Y);
grid on;
set(gcf, 'Color', [0.501960813999176030 0.501960813999176030 0.501960813999176030]);
set(gca, 'Color', [0.831372559070587160 0.815686285495758060 0.784313738346099850]);

set(B, 'Marker', 'o', 'MarkerFaceColor', [1 0 1], 'MarkerSize', 6.0)
set(B, 'LineWidth', 2.0)

X2=[-4:0.1:4];
Y2=normcdf(X, 0, 0.5);
figure;
plot(X,Y);
grid on;
set(gcf, 'Color', [0.501960813999176030 0.501960813999176030 0.501960813999176030]);
set(gca, 'Color', [0.831372559070587160 0.815686285495758060 0.784313738346099850]);
B2=findall(gca, 'Type', 'line');
set(B2, 'Marker', 'o', 'MarkerFaceColor', [1 0 1], 'MarkerSize', 6.0)
set(B2, 'LineWidth', 2.0)
