p = [6 6 6 6 6 15 13 14 15 13 0 0 0 0 0 0 0 0 0 0]/100; N = 10000;
for i = 1:N, k = 0;
    while 1, k = k + 1;
         j = 1 + floor(20*rand);   % Get Uniform j
	 if (3*rand) < p(j)/0.05  % Accept p(j) if U<p(j)/c, q(j)= 0.1
	 X(i) = j; C(i) = k; 
         break
     end
    end
end
x=unique(X)
y=hist(X,x)
[AX]=plotyy(x,y,1:20,p,'bar','plot')
set(get(gca,'xlabel'),'string','X-axis');
set(get(AX(1),'Ylabel'),'string','left Y-axis');
set(get(AX(2),'Ylabel'),'string','right Y-axis');
var(X)
mean(X)


E_the=0
for i=1:20
    E_the=i*p(i)+E_the
end


var_the=var(p)

c=0
for l=1:N
  c=c+C(1,l);
end
Effi=N/c

% Check mean X and C
%disp([ mean(X) sum(p.*[1:10]) mean(C) ])