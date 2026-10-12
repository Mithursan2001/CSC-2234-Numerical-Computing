function [root] = secantM(x0, x1, step, epes)
n = 1;         
er = 1; 
if f(x0)*f(x1)<0
    while (n <= step && er > epes)
        f_x0 = f(x0);
        f_x1 = f(x1);     
        if (f_x1 - f_x0 == 0)
            error('Division by zero encountered in Secant Method');
        end
        x2 = x1 - (f_x1 * (x1 - x0)) / (f_x1 - f_x0);   
        er = abs((x2 - x1) / x2);      
        x0 = x1;
        x1 = x2;
        n = n + 1;
    end
    root = x2; 
    else
         warning('No root guaranteed in the given interval (f(x0) and f(x1) have the same sign).');
end
end
