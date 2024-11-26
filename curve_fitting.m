%% find the quadratic polynomial for the following data 
%%x 0.1,0.2,0.3,0.4,0.5
%%y 1.4,1.56,1.76,2,2.28
%also create a plot that shows given data points and polynomial curve on same
%set of orders
%methods
%create row vector of independent variable 

x=(0.1:0.1:0.5);

%create row vector of dependent  variable 
y=[1.4,1.56,1.76,2,2.28];
%creating the variable for storing the polynomial
p=polyfit(x,y,2)
fprintf('y=%fx^2 + %fx + %f',p(1),p(2),p(3))
plot(x,y,".b")
xlabel("x-axis");
ylabel("y-axis");
title("best fitting");
hold on
X=linspace(min(x),max(x),100);
Y=polyval(p,X);
plot(X,Y,"r");
hold off

%% %% find the quadratic polynomial for the following data 
%%x 0.1,0.2,0.3,0.4,0.5
%%y 1.4,1.56,1.76,2,2.28
%also create a plot that shows given data points and polynomial curve on same
%set of orders
%methods
%create row vector of independent variable 

x=[0.1,0.3,0.6,0.8];

%create row vector of dependent  variable 
y=[0.72,1.81,2.73,3.47];
%creating the variable for storing the polynomial
p=polyfit(x,y,3);
%fprintf('y=%fx^2 + %fx + %f',p(1),p(2),p(3))
plot(x,y,".b")
xlabel("x-axis");
ylabel("y-axis");

hold on
X=linspace(min(x),max(x),100);
Y=polyval(p,X);
plot(X,Y,"r");
hold off
%% %% find the quadratic polynomial for the following data 
%%x 0.1,0.2,0.3,0.4,0.5
%%y 1.4,1.56,1.76,2,2.28
%also create a plot that shows given data points and polynomial curve on same

x=0:5:25;

%create row vector of dependent  variable 
y=[-1,9,19,29,39,49];
%creating the variable for storing the polynomial
p=polyfit(x,y,1);
%fprintf('y=%fx^2 + %fx + %f',p(1),p(2),p(3))
plot(x,y,".b")
xlabel("x-axis");
ylabel("y-axis");


hold on
X=linspace(min(x),max(x),100);
Y=polyval(p,X);
plot(X,Y,"r");
hold off
%% for exponential  fucntion
x = 1:1:10;
y = [0.7358, 0.2708, 0.0996, 0.0366, 0.0135, 0.0049, 0.0018, 0.0007,0.0002,0.00009];
 


p = polyfit(x, log(y), 1);
b = p(1);
a = exp(p(2));


plot(x, y, '.b');
title("exponential")
xlabel("x-axis")
ylabel("y-axis")
hold on;


X = min(x):0.1:max(x);
Y = a .* exp(b .* X);


plot(X, Y, '-');


xlabel('x');
ylabel('y');
legend('Data points', 'Fitted curve');
hold off
fprintf('parameters : a= %f , b=%f',a,b);
fprintf('best fitting curve : y=%f*e^(%f*x)',a,b);