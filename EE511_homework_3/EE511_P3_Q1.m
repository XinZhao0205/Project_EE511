n=input('sample\n');
s=ones(1,125);
d=0;
d_1=0;
%d_2=5:125;
z=6:125;
x=rand();
for i=1:6
    s(i)=0;
end
for j=1:n;
    x=randsample(s,5,0);
     if ismember(0,x)
        d=d+1;
     end 
end 
p=d/n;

%for i=5:125
    
if p>=0.95
   % x=randsample(s,z,0);
   % if ismember(0,x)
      % d_1=d_1+1;
   % end
    d
end 

  