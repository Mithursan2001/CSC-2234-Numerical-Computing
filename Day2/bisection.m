function[root]=bisection(xl,xu,step,epes)
n=1;
er=1;
xm=0;

if f(xl)*f(xu)<0
    while (n<=step && er>epes)
        xm_old=xm;
        xm=(xl+xu)/2;

        if f(xl)*f(xm)<0
            xu=xm;
        else
            xl=xm;
        end
        if xm ~= 0
            er=abs((xm-xm_old)/xm);
        end
        n=n+1;
        error(n)=er;
        stp(n)=n;
    end
    root=xm;
    plot(stp,error);
    title('Bisection Graph');
    xlabel('Std');
    ylabel('Error');
else
    disp('there is no root in this intervel');
end
end
