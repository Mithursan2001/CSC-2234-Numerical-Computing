function diff_order4(x,h)
	do4=(f(x-2*h)-8*f(x-h)+8*f(x+h)-f(x+2*h))/(12*h)
end

function y=f(x)
	y=exp(x);
end