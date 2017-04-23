mu=[1 2 3];
		  sigma=[3 -1 1;-1 5 3;1 3 4];
		  A=chol(sigma);
		  for i=1:100
    		  Z=randn([1,3]);
    		  X(i,:)=Z*A+mu;
		  end
		  M=mean(X)
