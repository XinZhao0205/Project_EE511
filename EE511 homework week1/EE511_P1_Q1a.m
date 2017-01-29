count = 0;
longest=0;
head = 0;
n=input('times\n');
a=zeros(1,50);
b=zeros(1,n);
%limit = input('probability:\n')
limit = 0.5;
for i=1:n
    for j=1:50
        a(j)=rand();
       if a(j)>=1-limit
        head = head +1;
       end
    end
    b(i)=head;
    head=0
end 
b
h=bar(b);