function Fdiff(x)
%x=[1 1.1 1.2 1.3]
    h = x(2) - x(1);%h=1.1-1=0.1
    n = length(x);%n=4
    fwd_diff = zeros(1, n-1);%zeros(1,3) 
    % 0 0 0 
    
         %f'(1)=f(1.1)-f(1)/h  i=1
         %f'(1.1)=f(1.2)-f(1.1)/h i=2

    for i = 1:n-1 %1:3  %i=2
        fwd_diff(i) = (f(x(i+1)) - f(x(i))) / h;
        %for i=1
        %fd(2)=(f(x(3))-f(x(2))/h
        %fd(2)=f(1.2)-f(1.1)/0.1
    end

    fprintf('x\t\t\tf''(x) approxf \texact f''(x)\t\terror\n');
    for i = 1:n%1:4 
        true_value = fo(x(i));
        %fo(x(1))=fo(1) i=1
        %fo(x(2))=fo(1.1) i=2
        %fo(x(3))=fo(1.2) i=3
        %fo(x(1))=fo(1) i=4
        error = abs(fwd_diff(i) - true_value);  
        
      
        fprintf('%.1f\t\t\t%.3f\t\t\t%.3f\t\t\t%.3f\n', x(i), fwd_diff(i), true_value, error);
    end
end

function y = f(x)
    y = log(x);
end

% Exact derivative f'(x) = -1/x^2
function g = fo(x)
    g = 1./x;
end
