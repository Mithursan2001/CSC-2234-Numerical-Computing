function [as]=simp13m(h,f)
    n=length(f);
    sum=f(1);
    
    if n >3
        for i=2:2:n-2 
            sum=sum+4*f(i)+2*f(i+1);
        end
    end
    sum=sum+4*f(n-1)+f(n);
    as=h*sum/3;
end
