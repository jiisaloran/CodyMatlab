
no = [1 3 5 7 9 11 13 15];
ln = length(no);
p=0;
for i=1:ln
    for j=1:ln
        for k=1:ln
            p=p+1;
            to(p)=sum(no([i j k]));
            ko(p,:)=[i j k];
        end
    end
end
