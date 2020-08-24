
%%% If you have the curve fitting toolbox, you can use the smooth function.
%%% The default method is a moving average of size 5 (method can be changed).
%%% An example:

% some noisy signal
Fs = 200; f = 5;
t = 0:1/Fs:1-1/Fs;
y = sin(2*pi*f*t) + 0.6*randn(size(t));
subplot(411), plot(y);
subplot(412), plot( smooth(y, 5, 'moving') );  % average window

%%% If not, you can use use your own window function using filter:

wndwSize = 5;
h = ones(1,wndwSize)/wndwSize;      % equiv to a moving average window
subplot(413), plot( filter(h, 1, y) );

h = pdf('Normal',-floor(wndwSize/2):floor(wndwSize/2),0,1);   % gaussian
subplot(414), plot( filter(h, 1, y) )



