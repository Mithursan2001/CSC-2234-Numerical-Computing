function[x]=forward(l,b,n)
%l=3*3 n=3
x=zeros(n,1);%x=[0;0;0]
x(1)=b(1)/l(1,1);%x
%x=-1
%2x+y=0
%3x+4y+z=1
for i=2:n% y,z
    sum=b(i);
    for j=1:i-1%1:1
        sum=sum-l(i,j)*x(j);
    end
    x(i)=sum/l(i,i);
end
end
