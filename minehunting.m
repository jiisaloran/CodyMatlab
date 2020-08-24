%Problem 173. Minefield Sonar
function y = minehunting(I,J,M,N)
    y = zeros(M+2,N+2);
    I=I+1;
    J=J+1;
    for ii=1:length(I(:))
        y(I(ii)-1:I(ii)+1,J(ii)-1:J(ii)+1) = y(I(ii)-1:I(ii)+1,J(ii)-1:J(ii)+1) + ones(3);
    end
    for ii=1:length(I(:))
        y(I(ii),J(ii)) = -1;
    end
    y = y(2:end-1,2:end-1);
end