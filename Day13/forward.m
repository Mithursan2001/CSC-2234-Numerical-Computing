function[x]=forward(l,b,n)
x=zeros(n,1);
x(1)=b(1)/l(1,1);
for i=2:n
    sum=b(i);
    for j=1:i-1
        sum=sum-l(i,j)*x(j);
    end
    x(i)=sum/l(i,i);
end
end
