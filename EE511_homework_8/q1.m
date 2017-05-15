clear,clc
g = @(x)exp(sum(5 * abs(x - 5)));% Simple MC for a
%g = @(x)4*cos(pi+sum(10*x-5));% Simple MC for b
% N = 1000;
% X = g(rand(2,N));
% mean = mean(X);
% disp('The mean using Monte Carlo method: ');
% disp(mean);
% disp('The std using Monte Carlo method: ');
% disp(std(X)/sqrt(N));

% Stratified Sampling for a
g = @(x)4*cos(pi+sum(10*x-5));% for b
% g = @(x)exp(sum(5 * abs(x - 5)));% for a
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
U = rand(2,N);e=@(x)2*x+1;
X = -log(1-(e-1)*U/e);
T = (1/e-1)^2*exp(sum(5 * abs(X - 5)+X));
disp('The mean using Importance sampling method: '); 
disp(mean(T))
disp('The std using Importance sampling method: '); 
disp(std(T)/sqrt(N))