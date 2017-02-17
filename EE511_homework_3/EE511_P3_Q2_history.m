lambda=120;
n=7200;
p=lambda/n;
for i=1:1000
  u=rand(n,1);
  bernoulliTrials=u<p;
  x(i)=sum(bernoulliTrials);
end
histogram(x)

