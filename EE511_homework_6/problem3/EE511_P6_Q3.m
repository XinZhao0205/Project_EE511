x=-25:0.05:24.95;
X = stblrnd(2.0,0.75,1,0,1000,1);
figure(1)
h=histogram(X,x)
set(h,'facecolor','b','edgecolor','b')
hold on
Y = 100*stblpdf(x,2.0,0.75,1,0,[1000 1]);
plot(x,Y,'r')
legend('hist of X','theoretical pdf')
xlabel('value of samples');
figure(2)
plot(X)
xlabel('time slot');
