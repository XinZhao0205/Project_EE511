a=0
for i=1:60
    a=a+(1/i)
end
p=1/a
N60=[]
for i=1:60
    N60(i)=p/i
end
 sample=[]   

for j=1:1000
    m=randsample([1:60],1,true, N60)
    sample(j)=m
end
hist(sample,60)

k=[]
for i=1:1000
    t=0
    while 1>0
        n=randsample([1,0],1,true, [(p/60),(1-(p/60))])
        t=t+1
        if n==1
           k(i)=t
           break
        end
    end
end
E60_trail=mean(k)
E60_theor=60/p
V60=(1-(p/60))/(p/60)^2
