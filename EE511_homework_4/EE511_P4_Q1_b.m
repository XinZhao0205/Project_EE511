u=rand(1000,1)
g=2*(exp(-(1./u-1).^2))./(u.^2)
E=sum(g)/1000
 
t=@(x)exp(-x.^2)
p=integral(t,-inf,inf)
