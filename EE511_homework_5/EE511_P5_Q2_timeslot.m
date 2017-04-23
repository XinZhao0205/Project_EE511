count1=[];
count2=[];
pro_total=[];
pro_sum=[];

for p=0:0.001:0.999;
    i=0;
    count_1=0;
    count_2=0;
    output1=0;
    output2=0;
    pro=[];
    while i<1000;
        if rand()<p;
            count_1=count_1+1;
        end
        if rand()<p;
            count_2=count_2+1;
        end
            
        if count_1==0 &count_2==0;
            pro=[pro,0];


        elseif count_1>0 & count_2==0;
            pro=[pro,1];
            if rand()>0.5;
               output1=output1+1;
               count_1=count_1-1;
            else
                output2=output2+1;
                count_1=count_1-1;
            end
            
        elseif count_1==0 & count_2>0;
            pro=[pro,1];
            if rand()>0.5;
                output1=output1+1;
                count_2=count_2-1;
            else
                output2=output2+1;
                count_2=count_2-1;
            end
            
        elseif count_1>0 & count_2>0;
            
            a=rand();
            b=rand();

            if (a>0.5&b<0.5) | (a<0.5 & b>0.5);
                pro=[pro,2];
                output1=output1+1;
                output2=output2+1;
                count_1=count_1-1;
                count_2=count_2-1;
            
            elseif a>0.5 & b>0.5;%they all be sent to 1
                pro=[pro,1];
                if rand()<0.5 %send the first package
                    count_1=count_1-1;
                    output1=output1+1;
                else
                    count_2=count_2-1;
                    output1=output1+1;
                end
                
            elseif a<0.5 & b<0.5;
                pro=[pro,1];
                if rand()<0.5 %send the first package
                    count_1=count_1-1;
                    output2=output2+1;
                else
                    count_2=count_2-1;
                    output2=output2+1;
                end
            end
        end
        i=i+1;
    end
    pro_total=[pro_total,mean(pro)];
    pro_sum=[pro_sum,sum(pro)];
end
a=0:0.001:0.999;
figure(1)
plot(a,pro_total)
hold on 
efficiency=mean(pro_sum/2000);
coff=sort(pro_sum/2000);
coff=coff(25:975);
[coff(1),coff(951)]
b=0.025:0.001:0.975;
figure(2)
plot(b,coff)
hold on