% Matlab Cody 
% Problem 232. Project Euler: Problem 2, Sum of even Fibonacci

% Sum the even terms in the Fibonacci sequence whose values do not
% exceed the input value.
function S = euler002(x)
    s = [1 2];
    while 1
       snew = sum(s(end-1:end));
       if snew < x
           s(end+1) = snew;
       else
          break
       end
    end
    S = sum(s(mod(s,2)==0));
end
