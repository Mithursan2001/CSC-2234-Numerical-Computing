function pivotgaussEle(A,b)%gaussian elimination method with pivoting
n=size(A,1)%n=3
%A=
%1 4 3  x1
%0 2 1  x2
%2 2 1  x3

%b
%1
%2
%2

x=zeros(n,1) %x=zeros(3,1)=x=[0;0;0]
     for k=1:n %k=2
       if (A(k,k)==0)%A(2,2)==0
        temp=A(k,:);%temp=A(1,:) %0 2 1 
        A(k,:)=A(k+1,:); %A(1,:)=A(2,:)
        A(k+1,:)=temp;   %A(2,:)=temp
        
        t=b(k);%t=b(1)=2
        b(k)=b(k+1);%b(1)=b(2)=1
        b(k+1)=t; %b(2)=2
    end

    for i=k+1:n %i=2:3
        fact=A(i,k)/A(k,k);%A(2,1)/A(1,1)=0/1=0
        for j=k:n
            A(i,j)=A(i,j)-fact*A(k,j);
      end
        b(i)=b(i)-fact*b(k);
        [A,b]
      end                  
     end          
A  
%1 4 3
%0 2 1
%0 0 -2
b

x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
x
end
    