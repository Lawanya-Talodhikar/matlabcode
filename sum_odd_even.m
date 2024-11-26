%sum_odd_even
function [out1,out2]=sum_odd_even(n)
out1=0;
out2=0;
for i=1:n
    if rem(i,2)==0
        out1=out1+i;
    else 
        out2=out2+i;
    end
end
end
