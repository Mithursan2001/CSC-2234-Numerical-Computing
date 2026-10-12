function [diff]=diff_od4(h,lf2,lf1,rf1,rf2)
    
    diff=(-rf2+8*rf1-8*lf1+lf2)/(12*h);
end