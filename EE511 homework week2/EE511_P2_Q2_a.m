n=input('sample\n');
x=rand(1,1000);
x_1=randsample(x,n,1);
x_2=[0,x_1(1:n-1)];
c=cov(x_1,x_2);
