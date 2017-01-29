k=input('sample\n');
x=rand(1,10000);
x=randsample(x,k,1);
y_1=[0,x(1:k-1)];
y_2=[0,0,x(1:k-2)];
y_3=[0,0,0,x(1:k-3)];
if k<=0
    x(k)=0;
    y_1=x(k-1);
    y_2=x(k-2);
    y_3=x(k-3);
end
    y=x(k)-2*y_1+0.5*y_2-y_3;
    cov(x,y);
