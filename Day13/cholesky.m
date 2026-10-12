function cholesky(A,b)
n=size(A,1);
x=zeros(n,1);
U=zeros(n);
    if A == A'
        for i = 1:n
            for j = i:n 
                sum = 0;
                for k = 1:i-1 
                    sum = sum + U(k,i) * U(k,j);
                end
                if i == j 
                    U(i,j) = sqrt(A(i,i) - sum);
                else
                    U(i,j) = (A(i,j) - sum) / U(i,i);
                end
            end
        end
    else
        error('Matrix A is not symmetric');
    end
    U
    L=U'
    [y]=forward(L,b,n); 
    [x]=backsub(U,y,n);
end