function Euler(a,b,h,y1)%(0,0.1,0.02,1)
n=(b-a)/h;
x=zeros(n,1);
y=zeros(n,1);
fx=zeros(n,1);
x(1)=a;
y(1)=y1;

for i=1:n 
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+(h*f(x(i),y(i)));
    fx(i)=f(x(i),y(i));
end
plot(x,y);
title('Euler Method');
xlabel('x');
ylabel('y');
fx
[x  y]
end

function dy=f(x,y)
dy=y-x^2+1;
end