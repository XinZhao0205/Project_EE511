
input=[zeros(1,100),1,zeros(1,100)];     % initial distribution
 N = 100;          % number of individuals
 
% transition matrix
 P=zeros(2*N+1,2*N+1); 
 for i = 1:2*N+1
     for j = 1:2*N+1
         P(i,j) = nchoosek(2*N,j-1)*((i-1)/(2*N))^(j-1)*(1-(i-1)/(2*N))^(2*N-j+1);
     end
     
 end
n=5000;           % number of time steps to take
output=zeros(n+1,2*N+1); % clear out any old values
t=0:n;          % time indices

output(1,:)=input; % generate first output value 

i = 0;
for i=1:n,
  output(i+1,:) = output(i,:)*P;
  %a tolerance check to  automatically stop the simulation when the density is close to its steady-state
  LIT = ismembertol(output(i+1,:),output(i,:));
  if all(LIT == 1)     
      break;
  end
end