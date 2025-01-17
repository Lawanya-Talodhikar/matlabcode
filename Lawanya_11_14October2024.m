%Q1) for the values of x 0.8+rollnumber  ,0.9+roll , 1+r , 1.2+r
%y=-1.0880-r , -1.071-r,-1-r, -0.672-r

%find y at x=1.1+r

%lagranges interpolation method 

%Q2)x : r-1 , r-3 , r-5 , r-7 , r-9 , r-11 , r-13
%y : r+0.7 , r+0.1 , r+0.01 , r+0.002 , r+0.0003 , r+0.00003 , r+ 0.000005
%find y at x= r-8

% newtons law backward
%%Q1) 
r = 11;
x= [0.8 + r, 0.9 + r, 1 + r, 1.2 + r];
y = [-1.0880 - r, -1.071 - r, -1 - r, -0.672 - r];

X = 1.1 + r;


n = length(x);


P = 0;


for i = 1:n
    
    L_i = 1;
    for j = 1:n
        if j ~= i
            L_i = L_i * (X - x(j)) / (x(i) - x(j));
        end
    end
    
    P = P + y(i) * L_i;
end


fprintf('The value of y at x = %.2f is approximately %.4f\n', X, P);
%% Q2)
%Q2)x : r-1 , r-3 , r-5 , r-7 , r-9 , r-11 , r-13
%y : r+0.7 , r+0.1 , r+0.01 , r+0.002 , r+0.0003 , r+0.00003 , r+ 0.000005
%find y at x= r-8

% newtons law backward


r = 11;
x = [r - 1, r - 3, r - 5, r - 7, r - 9, r - 11, r - 13];
y = [r + 0.7, r + 0.1, r + 0.01, r + 0.002, r + 0.0003, r + 0.00003, r + 0.000005];


X = r - 8;
n = length(x);

deltaY = zeros(n-1, 1);
for i = 1:n-1
    deltaY(i) = y(i) - y(i + 1);
end


P = y(n); 

h = x(1) - x(2); 
xn = x(end); 

for k = 1:n-1
    term = 1;
    for j = 0:k-1
        term = term * (X - xn + 2 * j);
    end
    P = P + (term / factorial(k)) * deltaY(k);
end


fprintf('The value of y at x = %.2f is approximately %.4f\n', X, P);


