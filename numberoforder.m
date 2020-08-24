
A=perms([1:10]); %factorial(10)
pit=zeros(size(A,1),1);

k=0;
da=0; nej=0;

tic
while k < size(A,1)
   k=k+1;
   pit(k)=sum(diff(A(k,:))>0);
   if pit(k)==1
       da=da+1;
       tau(da,:)=A(k,:);
   else
       nej=nej+1;
   end
   
end
toc
