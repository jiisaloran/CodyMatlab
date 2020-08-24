function fh2 = iterate_recur(fh, n)

iif = @(varargin) varargin{2*find([varargin{1:2:end}], 1, 'first')}();
recur = @(f, varargin) f(f, varargin{:});
fh2 = @(c) recur(@(f,n) iif(n==0, 1, true, @() fh(fh(c))), n);

end
