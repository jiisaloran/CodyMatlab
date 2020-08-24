function f = fifth_root(n)
 %f = n to the power 1/5
 if n < 1
     n = 1/n;
     q = 1;
 else
     q = 0;
 end
 
 x0 = 1;
 while 1
     x1 = 1/5*(4*x0+n/(x0*x0*x0*x0));
     if abs(x0-x1)<1e-6
         break
     else
         x0 = x1;
     end
 end
 if q==1
    f = 1/x1;
 else
     f = x1;
 end
end
