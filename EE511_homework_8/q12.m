clear,clc
 g = @(x)exp(sum(5 * abs(x - 5)));% Simple MC for a
%g = @(x)*cos(pi+sum(5*x));% Simple MC for b

N = 1000;
X = g(rand(2,N));   
K = 10; Nij = N/K^2;
for i = 1:K
for j = 1:K
XS = g([i-1+rand(1,Nij);j-1+rand(1,Nij)]/K);
XSb(i,j) = mean(XS);
SS(i,j) = var(XS);
end
end
SST = mean(mean(SS/N));
disp('The mean using Stratified sampling method: '); 
disp(mean(mean(XSb)));
disp('The std using Stratified sampling method: '); 
disp(2*sqrt(SST));

% Importance Sampling for a
U = 2*rand(2,N)-1;
e = exp(1);
X = log(1+(e-1)*U);
%
for i = 1:N
T(i) = (e-1)^2*cos(pi+5*U(1:i)+5*U(2,i));
disp('The mean using Importance sampling method: '); 
disp(mean(T))
disp('The std using Importance sampling method: '); 
disp(2*std(T)/sqrt(N))