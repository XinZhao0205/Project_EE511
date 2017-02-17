function[p]=reject_probability( x )
reject=0;
s=ones(1,125);
for i=1:6
    s(i)=0;
end
for j=1:1000
    x=randsample(s,x,0);
    if ismember(0,x)
        reject=reject+1;
    end 
end
 p=reject/1000;