count = 0;
longest=0;
head = 0;
n=input('times\n');
a=zeros(1,50);
b = zeros(1,50);
%limit = input('probability:\n')
limit = 0.5;
for i=1:50
a(i)=rand();
  if a(i)>1-limit
      b(i) = 1;
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
