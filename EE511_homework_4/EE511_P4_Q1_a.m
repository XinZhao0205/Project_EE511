u=rand(1000,1)
g=4*exp((-2+4*u)+(-2+4*u).^2)
E=sum(g)/1000

fun=@(x)exp(x+x.^2)
q=integral(fun,-2,2)
