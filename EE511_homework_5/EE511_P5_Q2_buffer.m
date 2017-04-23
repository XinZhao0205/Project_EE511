count1=[];
count2=[];

for p=0:0.01:0.99
    i=0;
    count_1=0;
    count_2=0;
    output1=0;
    output2=0;
    recount1=[];
    recount2=[];
    for j=1:100
        while i<1000
            if rand()<p
                count_1=count_1+1;
            end
            if rand()<p
                count_2=count_2+1;
            end


            if count_1>0 & count_2==0
                if rand()>0.5
                    output1=output1+1;
                    count_1=count_1-1;
                else
                    output2=output2+1;
                    count_1=count_1-1;
                end

            elseif count_1==0 & count_2>0
                if rand()>0.5
                    output1=output1+1;
                    count_2=count_2-1;
                else
                    output2=output2+1;
                    count_2=count_2-1;
                end

            elseif count_1>0 & count_2>0
                a=rand();
                b=rand();

                if (a>0.5&b<0.5) | (a<0.5 & b>0.5)
                    output1=output1+1;
                    output2=output2+1;
                    count_1=count_1-1;
                    count_2=count_2-1;

                elseif a>0.5 & b>0.5 %they all be sent to 1
                    if rand()<0.5 %send the first package
                        count_1=count_1-1;
                        output1=output1+1;
                    else
                        count_2=count_2-1;
                        output1=output1+1;
                    end

                elseif a<0.5 & b<0.5 
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
       recount1(j)=count_1;
       recount2(j)=count_2;
    end
    count1=[count1,mean(recount1)];
    count2=[count2,mean(recount2)];
end
a=0:0.01:0.99;
plot(a,count1,a,count2)
legend('input port1','input port2')