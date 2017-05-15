%g = @(x)exp(sum(5 * abs(x - 5)));% Simple MC for a
g = @(x)4*cos(pi+sum(10*x-5));% Simple MC for b
 N = 1000;
X = g(rand(2,N));
 mean = mean(X);
 disp('The mean using Monte Carlo method: ');
 disp(mean);
 disp('The std using Monte Carlo method: ');
 disp(std(X)/sqrt(N));