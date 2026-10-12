function[x]=backsub(u,b,n)
x=zeros(n,1);%zeros(3,1) x=0 x(1)
                          %0 x(2)
                          %0 x(3) x(n)
%u=3 2 1
  %0 2 3 u(2,3)
  %0 0 2
  
  %b=6
    %7
    %4 b(n)
%Compute the Last Value of x
x(n)=b(n)/u(n,n); %x(3)=b(3)/u(3,3)=4/2=2

for i=n-1:-1:1 %i=2 1
    sum=b(i);  %sum=b(1)=6
    for j=i+1:n  %2:3
        sum=sum-u(i,j)*x(j);  %x2=(sum-u(2,3)x3)/u(2,2)
    end
    x(i)=sum/u(i,i);
end
end
