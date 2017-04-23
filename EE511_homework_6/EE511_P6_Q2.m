clear all;
% Sample code to find the maximum ratio c
pdfX = @(x) 32/(945*sqrt(pi)) .* x.^(9/2) .* exp(-x); % one-line function handle for f
pdfY = @(y) 2/11 * exp(-2*y/11); % one-line function handle for g
t = 0:0.01:8;
ratio = pdfX(t)./pdfY(t);
c = max(ratio); % find the maximum ratio

i=0;
Y_all=[];
m=0;
while i<1000
    u=rand();
    Y=(-11/2)*log(u);
    u1=rand();
    if u1<=(pdfX(Y)/(c*pdfY(Y)))
        i=i+1;
        Y_all=[Y_all,Y];        
    end
    m=m+1;
end;
rate=1000/m 
Y_theo=gamrnd(5.5,1,1,1000);
hist(Y_all);
h = findobj(gca,'Type','patch');
set(h,'facecolor','r','facealpha',0.75)
hold on; 
hist(Y_theo)
h1 = findobj(gca,'Type','patch');
set(h1,'facealpha',0.75);
legend('hist of experiment','theoretical pdf')
xlabel('variable');