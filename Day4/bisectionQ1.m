function[root]=bisectionQ1(xl,xu,step,epes)
n=1;
er=1;
xm=0;

if fl(xl)*fl(xu)<0
    while (n<=step && er>epes)
        xm_old=xm;
        xm=(xl+xu)/2;

        if fl(xl)*fl(xm)<0
            xu=xm;
        else
            xl=xm;
        end
        er=abs((xm-xm_old)/xm);
        n=n+1;
    end
    root=xm;
else
    disp('there is no root in this intervel');
end
end