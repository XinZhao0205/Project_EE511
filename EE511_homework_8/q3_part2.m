x = linspace(-500,500); % Generate a row vector of 100 linearly equally spaced points between -500 and 500
y = linspace(-500,500); % Generate a row vector of 100 linearly equally spaced points between -500 and 500
[X,Y] = meshgrid(x,y);  % Obtain 100x100 pairs of points in matrix form from vectors x and y
Z = 418.9829*2 - (X.*sin(sqrt(abs(X)))+Y.*sin(sqrt(abs(Y))));


num_iter = 50; % number of iterations

for cc = 1: 100
    count = 1;
    p = [0 0];
c  = 1; %for different cooling procedure
val = 418.9829*2 - (p(1).*sin(sqrt(abs(p(1))))+p(2).*sin(sqrt(abs(p(2)))));
T0 = 100; %initial temprature
T = T0;

pointHistory = zeros(num_iter,2);
valHistory = val;
while(count<num_iter)
    count = count + 1;
    x2 = p(1)+normrnd(0,450);
    y2 = p(2)+normrnd(0,450);
    
    p2 = [mod(x2,500) mod(y2,500)];
    val2 = 418.9829*2 - (p2(1).*sin(sqrt(abs(p2(1))))+p2(2).*sin(sqrt(abs(p2(2)))));
    
    q = exp((val-val2)./(c.*T));
    
    if val2 - val <= 0
        p = p2;
        val = val2;
    else
        if rand <= q
            p = p2;
            val = val2;
        end
    end
    
    %different cooling procedure
     T = T0./log(count);
%     T = T0.*(count)^(-2);
%     T = T0.*exp(-sqrt(count));
    
    pointHistory(count,:) = p;
    valHistory(count) = val;
end
minimals(cc) = val;
end
hist(minimals')