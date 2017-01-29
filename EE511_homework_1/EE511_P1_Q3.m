count = 0;
head = 0;
a=zeros(1,100);
b=zeros(1,100);
limit = 0.5;
for j=1:100
    a(j)=rand();
    if a(j)>1-limit
    head =head+1;
    count=count+1;
    else
    b(j)=count;
    count=0;
    end
end
b
h=bar(b);
