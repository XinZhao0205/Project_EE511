n = 10;
for i=1:n
    Z=randn(1,4)
    X(i)=Z(1).^2+Z(2).^2+Z(3).^2+Z(4).^2
end
 
%% Plot empirical distribution function
x = sort(X);
t = 0:10^-4:12;
figure(1)
stairs(x,1/n:1/n:1,'b','linewidth',2);
hold on
grid on
plot(t,chi2cdf(t,4),'r--','linewidth',2);
hold off
legend('Empirical cdf','Theoretical cdf');
ylim([0 1.05]);
title('Distribution of F(x)');
xlabel('x');
ylabel('F(x)');
 
diff=[1/n:1/n:1]-chi2cdf(x,4)
M=max(diff)
 
p25=chi2inv(0.25,4)
p50=chi2inv(0.5,4)
p90=chi2inv(0.9,4)