% Solve the given equation: 
% a+13*b/c+d+12*e-f-11+g*h/i-10=66
% with 9 unknowns via
% i) random selection
% ii) brute force


% Laws of the nature states that eventually our random selection will
% give the correct result
tic
while 1
    x = randperm(9);
    sumx = x(1)+13*x(2)/x(3)+x(4)+12*x(5)-x(6)-11+x(7)*x(8)/x(9)-10;
    if sumx==66
        break;
    end
end
sol1=x;
toc


% Brute force
tic
v = perms([1:9]);
jj=0;
for ii=1:length(v)
    x=v(ii,:);
    sumx = x(1)+13*x(2)/x(3)+x(4)+12*x(5)-x(6)-11+x(7)*x(8)/x(9)-10;
    if sumx==66
        jj=jj+1;
        sol(jj,:)=x;
    end
end
toc

% Note that if you start guessing, pretty muvh first guess can be any of
% the numbers located any of the places:
M=zeros(9,9);
for kk=1:9
    M(unique(sol(:,kk)),kk)=unique(sol(:,kk));
end
M %#ok<NOPTS>
