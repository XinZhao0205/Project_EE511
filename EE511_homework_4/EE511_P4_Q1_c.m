syms x y;
f = exp(-(x+y).^2);
a=int(int(f, x, 0, 1), y, 0, 1)
exp(-4)/2 - exp(-1) - pi^(1/2)*erf(1) + pi^(1/2)*erf(2) + 1/2

G=[]
for k=1:100
    x=rand(1000,1)
    y=rand(1000,1)
    g=exp(-(x+y).^2)
    G(k)=sum(g)/1000
end
E=sum(G)/100