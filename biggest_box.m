function [r1,r2,c1,c2] = biggest_box(a)

for s = 1:length(a)
    sdone = 0;
    for r=1:length(a)-s+1
        for c=1:length(a)-s+1
            if sum(a(r:r+s-1,c:c+s-1))==0
                r1 = r;
                r2 = r+s-1;
                c1 = c;
                c2 = c+s-1;
                sdone = 1;
                break;
            end
        end
        if sdone
            break;
        end
        
    end
end

end