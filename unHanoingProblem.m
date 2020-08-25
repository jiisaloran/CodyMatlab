% MATLAB Cody\
% Problem 199. hanoi towers II
function mytry = unHanoingProblem(n)
% Solution with Hanoi algorithm.
% One could use the fact that solution is following two patterns depending if even or odd number disks:
% i) [3 2 1 3 2 1 ...], % ii) [2 3 1 2 3 1 ...]

    global m
    m = [];
    Hanoi(n,1,3,2);
    mytry = m;
    function Hanoi(n,s,d,a)
        if n == 1
            m = [m, a];
            %disp(['Move disk ' num2str(n) ' from rod ' num2str(s) ' to rod ' num2str(d)]); 
        else
            Hanoi(n-1,s,a,d);
            m = [m, a];
            %disp(['Move disk ' num2str(n) ' from rod ' num2str(s) ' to rod ' num2str(a)]); 
            Hanoi(n-1,a,d,s);
        end
    end
end