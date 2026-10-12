function [V]=trapm(h,f)
%h=0.5
%f=[0 0.25 1 2.25 4] %1 2 3 4 5
    n=length(f);%5 %4
    
    sum=0;
    
    for i=2:n-1
        sum=sum+2*f(i);
    end
    sum=sum+f(n)+f(1);
    V=h*sum/2;
end