function [ P ] = Reject_Probability( X )
%IF WE TEST X CHIPS WHAT IS THE PROBABILITY THAT WE WILL REJECT THIS SAMPLE
Reject = 0;
for i = 1:1000
        r = randi([1 125],1,X);
        for j = 1:X
            if r(j) <= 6
                Reject = Reject + 1;
                break
            end
        end
end
P = Reject / 1000;
end

