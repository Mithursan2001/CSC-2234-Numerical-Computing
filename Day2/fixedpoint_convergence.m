function [root, p_values] = fixedpoint_convergence(x0, steps, epes)
    xr = x0;
    n = 1;
    er = 1;
    errors = [];  

    while (n <= steps && er > epes)
        xr_old = xr
        xr = g(xr_old)

        if xr ~= 0
            er = abs((xr - xr_old) / xr);
            errors = [errors, er]; 
        end
        n = n + 1;
    end
    
    root = xr; 

   
    p_values = []; 
    for i = 2:length(errors)-1
        p = log(errors(i+1) / errors(i)) / log(errors(i) / errors(i-1));
        p_values = [p_values, p];
    end


    fprintf('Estimated Order of Convergence: %.4f\n', mean(p_values));

    figure;
    plot(2:length(errors)-1, p_values, '*--g');
    xlabel('Iteration');
    ylabel('Estimated Order of Convergence (p)');
    title('Convergence Order at Each Step');
end
