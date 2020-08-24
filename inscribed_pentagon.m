%Cody: 44368. Inscribed Pentagon?
function y = inscribed_pentagon(p,cp,r)
  figure; hold on;
 th = 0:pi/60:2*pi;
 cX = r * cos(th) + cp(1);
 cY = r * sin(th) + cp(2);
 plot(cp(1),cp(2),'k.');
 plot(cX,cY,'k-');
 p = [p; p(1,:)];
 T=zeros(5,1);
 for i=1:5
     plot([p(i,1); p(i+1,1)], [p(i,2); p(i+1,2)], 'r*-');
     T(i) = norm(p(i,:)-cp)-r;
 end
 
 if all(T<0)
    y = 0;
 else
    y = 2;
 end
 if all(abs(T)<=0.02)
    y = 1;
 end
 
end