n=input('sample\n')
x=[]
for j=1:n
    a=0
    i=0
    while a<4
        i=i+1
        a=rand(1)+a
    end
    x(j)=i
end
histogram(x)
e=mean(x);