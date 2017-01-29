%n=input('number\n');
b=-3+5*(rand(1,100));
a=rand(1,1000);
for i=1:1000
    sample=randsample(b,100,1);
    m=mean(sample);
    a(i)=m;
end
order=sort(a);
low=order(25);
high=order(975);


