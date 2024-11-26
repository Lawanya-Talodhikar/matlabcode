n = input("Enter n value: ");
x = [];
fprintf("Enter x values: ");
for i=1:n
    x(i) = input(" ");
end

X = input("Enter the value of X = ");

l = [];
for i = 1:n
    l(i) = 1;
    for j = 1:n
        if(i~=j)
            l(i) = l(i) .* ((X - x(j))/(x(i)-x(j)));
        end
    end
end
l
%%
%% Langrange's interpolation

% x = x1, x2, x3, -------- xn
% X: any value in (x1, xn) but ~= xi
% y = y1, y2, y3, -------- yn
% Y(X) = ?
% Y(X) = Y1.L1 + Y2.L2 + ------ + Yn.Ln
%      = summation(i=1 to n) [Yi.Li]

n = input("Enter tne number of values: ");
x = [];
fprintf("Enter x values: ");
for i=1:n
    x(i) = input(" ");
end

X = input("Enter the value of X = ");

y = [];
fprintf("Enter y values: ");
for i=1:n
    y(i) = input(" ");
end

Y=0;
L = [];
for i = 1:n
    l = 1;

    for j=1:n
        if i~=j
            l = l * ((X - x(j))/(x(i)-x(j)));
        end
    end
    L(i) = l;
    Y = Y+y(i) * l;
end

Y