t=0;
Ts=[]
while t<=100
    u_1=rand()
    t=t-(1/19*log(u_1));
    u_2=rand()
    if u_2<=lambda(t)/19
       Ts=[Ts,t]
    end
end

s=size(Ts());
sum_t=0;
for i=(1:s(2))
    sum_t=sum_t+exprnd(1/25);
end
t_break=100-sum_t;