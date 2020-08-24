% create a random sigma, mu:
Sigma = cov(randn(100,2));
mu = randn(2,1);

% create grid
[X,Y] = meshgrid(-3:.2:3);
XY = cat(3,X,Y);

% subtract mu (note the correct dim)
XYmmu = bsxfun(@minus,XY,shiftdim(mu(:),-2));

% create sigma per XY element
isigXY = squeeze(sum(bsxfun(@times,shiftdim(inv(Sigma),-2),XYmmu),3));
XYisXY = sum(isigXY .* XYmmu,3);

% compute, plot the cdf
normcdf = (1/(2*pi*sqrt(det(Sigma)))) * exp(-0.5 * XYisXY);
surf(X,Y,normcdf);

%%
if(0)
    figure;
    subplot(221); imagesc(XYmmu(:,:,1)); title('XY-1')
    subplot(222); imagesc(XYmmu(:,:,2)); title('XY-2')
    subplot(223); imagesc(isigXY(:,:,1)); title('IG-1')
    subplot(224); imagesc(isigXY(:,:,2)); title('IG-2')
end