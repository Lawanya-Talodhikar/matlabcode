%for 3d line plot function is plot3 
% and mesh for surface plot
%write a matlab program to x=2/t * sin2t
% and y=2/t cos2t;
%z=t/2
%1<=t<=6pi
%x=2/t sin(2t)
%y=2/t cos(2t)
%z=t/2
%1<=t<+6pi
t=linspace(1,6.*pi,1000);
x=(2./t).*sin(2.*t);
y=(2./t).*cos(2.*t);
z=t./2;
plot3(x,y,z);
%% divide the figure window into two parts and then 
%%x=t^1/2*sin2t
%y=t^1/2cos2t;
%z=t/2;
%0<=t<=10*pi


t1 = linspace(0, 6 * pi, 1000);
t2 = linspace(-10 * pi, 10 * pi, 1000);


x = t1 .^ 1/2 .* sin(2 .* t1);
y = t1 .^ 1/2 .* cos(2 .* t1);
z = t1 ./ 2;


x2 = t2 .* cos(t2);
y2 = t2 .* sin(t2);

figure;


subplot(1, 2, 1);
plot3(x, y, z);
xlabel('t^{1/2} * sin(2t)');
ylabel('t^{1/2} * cos(2t)');
zlabel('z = t / 2');
title('3D Plot');
axis equal; 
grid on;


subplot(1, 2, 2);
plot(x2, y2);
xlabel('x = t * cos(t)');
ylabel('y = t * sin(t)');
title('2D Plot');
 


sgtitle('Combined Plots'); 
%% 3d plot surface plot
x=linspace(-2,2,1000);
y=linspace(-3,3,1000);
[p,q]=meshgrid(x,y)
z=1./(p.^2+q.^2+1);
subplot (1,2,1)
mesh(p,q,z)
subplot(1,2,2)
surf(p,q,z)
%%
x=-3:0.1:3;
y=-3:0.1:3;
[p,q]=meshgrid(x,y);
z=(1.8).^(-1.5).*(p.^2+q.^2).^0.5.*sin(p).*cos(q.*0.5);
subplot (1,2,1)
mesh(p,q,z)
xlabel("xaxis");
ylabel("yaxis");
zlabel("zaxis");
subplot(1,2,2)
surf(p,q,z)
xlabel("xaxis");
ylabel("yaxis");
zlabel("zaxis");
title ("3D plots");





