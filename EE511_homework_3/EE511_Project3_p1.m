result1 =Reject_Probability(5)
for X = 1:100
    P = Reject_Probability(X);
    if P > 0.95
        result2 = X
        break
    end
end
