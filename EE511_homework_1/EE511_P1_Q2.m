count = 0;
longest=0;
head = 0;
a=zeros(1,200);
b=zeros(1,200);
limit = 0.8;
for i=1:200
a(i)=rand();
  if a(i)>1-limit
     b(i)=1;
     head = head +1;
    count = count + 1;
    if longest < count
        longest = count;
    end
  else
    count = 0;
  end
end
head
longest
c=categorical(b,[1,0],{'head','tail'});
h=histogram(c,'BarWidth',0.5);
