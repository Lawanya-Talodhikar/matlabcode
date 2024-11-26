%find y at given x =X
%for:
%dy/dx=f(x,y),y(x0)=y0
%taking step size =h
%eulers method 
% y1=y0 + h[f(x,y)]at (x0,y0) = y0++hf(x0,y0)
%y2=y1+hf(x1,y1....... and so on
% Get user inputs
x_initial = input("Enter the value of x0: ");
y_initial = input("Enter the value of y0: ");
h = input("Enter the value of step size: ");
X = input("Enter the value of final value: ");


f = @(x, y) (1/(x^2) - y/x);


x = x_initial;
y = y_initial;


fprintf('x: %.4f, y: %.4f\n', x, y);


while x < X
    y = y + h * f(x, y); 
    x = x + h;           
    fprintf('x: %.4f, y: %.4f\n', x, y);  
end
%% runge kutta method of order 4
%y1=y0+1/6(k1+2k2+2k3+k4)
%k1=hf(x0,y0)
%k2=hf(x0+h/2,y0+k1/2) and so on till 
%k4=hf(x0+h,y0+k3)

% RK4 Method to compute the last value of y




x0 = input("Enter x0 value: ");
y0 = input("Enter y0 value: ");
h = input("Enter h value: ");
X = input("Enter X value: ");
f = @(x,y)(1/x^2 - y/x);

n = (X-x0)/h;
k1 = h*f(x0, y0);
k2 = h*f(x0 + h/2 , y0 + k1/2);
k3 = h*f(x0 + h/2, y0 + k2/2);
k4 = h*f(x0 + h, y0 + k3);

for i=1:n

    k1 = h*f(x0, y0);
    k2 = h*f(x0 + h/2 , y0 + k1/2);
    k3 = h*f(x0 + h/2, y0 + k2/2);
    k4 = h*f(x0 + h, y0 + k3);

    y0 = y0 + (1/6)*(k1+2*k2+2*k3+k4);
end

fprintf("y(%d) = %.4f", X, y0)