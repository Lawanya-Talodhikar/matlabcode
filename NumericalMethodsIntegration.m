%write a matlab program to find I=int(ydx) . from x1 and x2

%numerical methods of integration
%1st methods= else use 1st method 
%formula is I=h/2[y1+yn+2(y2+y3+.....+yn-1)



%2nd mehtod = interval i.e. n-1 should be even 
%formula is I=h/3[y1+yn+4(y2+y4+....yn-1)+ 2(y3+y5+y7...)]


%3rd = no of interval (n-1) is multiple of 3;
%formula is I=3h/8[y1+yn+4(y2+y3+y5+y6....)+ 2(y4+y7+....)]
%% 
x=input('x=');
y=input('y=');
h=x(1,2)-x(1,1);
n=length(x);
A=0;
for i=2:n-1
    A=A+2*y(i);
end

I=(h/2)*(y(1) + y(n) + A)


%% 
x = input('x = ');
y = input('y = ');
h = x(1,2) - x(1,1);
n = length(x);
A = 0;
A1 = 0; 
A2 = 0;
if rem(n-1, 3)==0
    for i = 2:n-1
        if rem(i, 3)-1 == 0
            A2 = A2 + 2*y(i);
        else
            A1 = A1 + 3*y(i);
        end
    end
    A = A1 + A2;
    I = (3*h/8) * (y(1) + y(n) + A)
elseif rem(n-1, 2)==0
    for i = 2:2:n-1
        A1 = A1 + 4*y(i);
    end
    for i = 3:2:n-1
        A2 = A2 + 2*y(i);
    end
    A = A1 + A2;
    I = (h/3) * (y(1) + y(n) + A)
else
    for i = 2:n-1
        A = A+2*y(i);
    end
    I = (h/2) * (y(1) + y(n) + A)
end
%% 
I=imread("")