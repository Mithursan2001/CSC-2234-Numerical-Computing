function gaussion(A,b)
n=size(A,1);%row size
x=zeros(n,1);
%A    b
%1 1 1 1
%1 2 4 -1 
%1 3 9 1

for k=1:n %1:3
    for i=k+1:n %2:3
        fact=A(i,k)/A(k,k);%A(2,1)/A(1,1)=1/1=1

        for j=k:n % 1:3
            A(i,j)=A(i,j)-fact*A(k,j); %A(2,1)=A(2,1)-fact*A(1,1)
        end
        b(i)=b(i)-fact*b(k);
     [A b]
    end 
end
A
b

x(n)=b(n)/A(n,n);

for i=n-1:-1:1
    sum=b(i);
    for j=i+1:n
        sum=sum-A(i,j)*x(j);
    end
    x(i)=sum/A(i,i);
end
x
end
