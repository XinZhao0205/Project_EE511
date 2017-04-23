randnum=zeros(10000,1);
for i=1:10000
    if (rand()>0.6)
        randnum(i,1)=normrnd(-1,1);
    else
        randnum(i,1)=normrnd(1,1);
    end
end
x=-5:1:5;
y1=hist(randnum,x);
y2=0.4*normpdf(x,-1,1)+0.6*normpdf(x,1,1);
[Fig]=plotyy(x,y1,x,y2,'bar','plot')
set(get(Fig(1),'Ylabel'),'String','Frequency');
set(get(Fig(2),'Ylabel'),'String','Probability');
set(Fig(1),'Ylim',[0,3000]);
set(Fig(2),'Ylim',[0,0.3]);
set(Fig(1),'YTick',[0:1000:3000]);
set(Fig(2),'YTick',[0:0.1:0.3]);
xlabel('Values of Y')
legend('Histogram','Theoretical pdf')

