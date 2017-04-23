tic;% Start the timer
clear all; close all; clc;

M1 = 1; % Mean of X
M2 = 2; % Mean of Y
V1 = 4; % Variance of X
V2 = 9; % Variance of Y

u1 = rand(1000,1);
u2 = rand(1000,1);

% Geberate X and Y that are N(0,1) random variables and independent
X = sqrt( - 2*log(u1)).*cos(2*pi*u2 ); 
Y = sqrt( - 2*log(u1)).*sin(2*pi*u2 );

% Scale them to a particular mean and variance 
x = sqrt(V1)*X + M1; % x~ N(M1,V1)
y = sqrt(V2)*Y + M2; % y~ N(M2,V2)
cov(x,y);
A=x+y;
m=-10:0.1:15;
R=2000*normpdf(m,3,sqrt(13));

toc; % Read elapsed time from stopwatch

hist(A);
h = findobj(gca,'Type','patch');
set(h,'facealpha',0.75)
hold on
plot(m,R,'r')
xlabel('value of A');
legend('hist of A','theoretical pdf')

x_mean=mean(x);
x_v=var(x);
y_mean=mean(y);
y_v=var(y);
A_mean=mean(A);
A_v=var(A);
