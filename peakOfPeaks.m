function pmax = peakOfPeaks(nmax)
pmax = 0;
for i = 2:nmax
   T = i;
   while T>1
      if mod(T,2)
         T = 3*T+1;
         if pmax<T
            pmax=T;
         end
      else
         T = T/2;
      end
   end
end
end

