%Cody: Problem 44369. Circle/Pentagon Overlap
function y = circle_pentagon_overlap(p,cp,r)

% Example
% p = [30.94,36.26; 35.61,27.09; 28.34,19.82; 19.17,24.49; 20.78,34.65];
% cp = [26.97,28.45];
% r = 8;


%  figure; hold on;
%  th = 0:pi/60:2*pi;
%  cX = r * cos(th) + cp(1);
%  cY = r * sin(th) + cp(2);
%  plot(cp(1),cp(2),'k.');
%  plot(cX,cY,'k-');
 
 T=zeros(5,1);
 for i=1:5
     plot([p(i,1); p(i+1,1)], [p(i,2); p(i+1,2)], 'r*-');
     if norm(p(i,:)-cp)<=(r+0.02)
         T(i)=1;
     end
 end
 
 y = sum(T);
end
