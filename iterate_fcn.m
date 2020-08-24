function fh2 = iterate_fcn(fh, n)
fh2 = @loop;
    function x = loop(x)
        for i = 1:n
            x = fh(x);
        end
    end
end

%%% ALTERNATIVE SOLUTION:
%
% function fh2 = iterate_fcn(fh, n)
% fh2 = @(x) x;
%     for ind = 1:n
%         fh2 = @(x) fh(fh2(x));
%     end
% end
%

%%% AND ANOTHER
% function fh2 = iterate_fcn(fh, n)
%     fh2=fh;
%     for i=2:n
%         fh2=@(x)fh2(fh((x)));
%     end
% end

%%% AND ANOTHER
% function fh2 = iterate_fcn(fh, n)
%    fh2 = @(x)fh(x);
%    for i=2:n,
%       fh2 = @(x)fh(fh2(x));
%    end
% end