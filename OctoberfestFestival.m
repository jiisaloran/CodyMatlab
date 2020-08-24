%Cody:  44370. Octoberfest festival
function totalNumberOfOrderedBeers = OctoberfestFestival(n)  
N = [1 1];
for i=2:n
    N(i+1)=sum(N(i-1:i));
end
totalNumberOfOrderedBeers=sum(N);
end
