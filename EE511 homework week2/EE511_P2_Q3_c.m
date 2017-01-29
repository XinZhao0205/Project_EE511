r=round(9*rand(1,100));
r_1=rand(1:10)+1;
h=histogram(r_1);
e=rand(1,10);
for i=1:10
    e(i)=100*0.1;
    r_1=hist(r);
end
r_2=[0,r_1(1:9)]
chisquaredTest=sum((r_2-e).^2./e);
ChisquaredThreshold_95=chi2inv(0.95,9);