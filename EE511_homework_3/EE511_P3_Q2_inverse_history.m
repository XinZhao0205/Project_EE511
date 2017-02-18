lambda=120;
result=[];
for j=1:1000
    x=rand(1);
    p=(exp(-120));
    f=p;
    i=0
    while 1>0
        if x<=f
           result(j)=i;
           break
        else p=lambda*p/(i+1)
            f=f+p;
            i=i+1
        end
    end
end
histogram(result)