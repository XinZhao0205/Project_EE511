lambda=120;
n=7200;
p=lambda/n;
for i=1:1000
  u=rand(n,1);
  bernoulliTrials=u<p;
  x(i)=sum(bernoulliTrials);
end
%x_1=unique(x)
%h_1=histc(x,x_1);
%theor=poisspdf(80:160,120)
%[ax]=plotyy(x_1,h_1,80:160,theor,'bar','plot')

    
    