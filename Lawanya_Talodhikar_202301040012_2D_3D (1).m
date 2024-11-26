%write a matlab program to create a graph of values of x and values of y
%taking values of x against x axis and y values against y axis 

%x:1988-1994
%y: 8 12 20 22 18 24 27
x=(1988:1994);
y=[8 12 20 22 18 24 27];

plot(x,y,"*r")
xlabel("years")

ylabel("frequency")
title("graph of coordinates")
grid on

%% create a graph of a function y=x^2+4sin2x-1,  -3<=x<=3
x=-3:0.1:3;
y=x.^2+4.*sin(2.*x)-1;
plot(x,y,"b:")
xlabel("x value")
ylabel("y=x^2+4sin(2x)-1")
title ("graph of function")
grid on

%% 
%find the root of the equation 3-x=e^(x-1)  , -2<=x<=2
x=(-2:0.1:2);
y1=3-x;
y2=exp(x-1);
plot(x,y1)
hold on
plot(x,y2)
%%
%x=(-2:0.1:4);
%y=(3.5).^(-0.5.*x).*cos(6.*x);

%z=(3.*x.^3-26.*x+10);


x=(-2:0.1:4);
y=(3.5).^(-0.5.*x).*cos(6.*x);

z=(3.*x.^3-26.*x+10);
subplot(1,2,2)
plot(x,y)
xlabel("xaxis")
ylabel("yaxis")
subplot(1,2,1)
plot(x,z)
xlabel("xaxis")
ylabel("yaxis")


%% 
%crete a seperate graphs of the following functions dividing fig window
%into 6 parts y=x^2-10x+20  x=-2 to 4
%y1=2x-10
%y2=2
%output y y1 y2 and all three

x=(-2:0.1:4);
y=x.^2-10.*x+20;
y1=2.*x-10;
y2=2;
subplot(2,3,1)
plot(x,y,"r.-")
xlabel("x-axis")
ylabel("yaxis")
subplot(2,3,2)
plot(x,y1,"g*")
xlabel("x-axis")
ylabel("yaxis")
subplot(2,3,3)
plot(x,y2,"b")
xlabel("x-axis")
ylabel("yaxis")
subplot(2,3,5)
plot(x,y,"g:")
hold on
plot(x,y1,"g:")
hold on
plot(x,y2,"g:")
hold on
xlabel("x-axis")
ylabel("yaxis")
%% to find the lowest root of the equation cosx*coshx=-1 in the interval -3<=x<=3

x = linspace(-3, 3, 1000);


y1 = cos(x);


y2 = -sech(x);



plot(x, y1, 'b', 'DisplayName', 'cos(x)');
hold on;
plot(x, y2, 'r', 'DisplayName', '-sech(x)');
xlabel('x');
ylabel('y');
legend('cos(x)', '-sech(x)'); 
title('Plot of cos(x) and -sech(x)');

grid on;


