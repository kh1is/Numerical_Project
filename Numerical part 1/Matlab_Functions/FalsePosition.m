function [out_l, out_u, out_r, cdata] = FalsePosition( xl, xu, fx, tolerance, max_iter)
%FALSEPOSITION Summary of this function goes here
%   Detailed explanation goes here
flag = 0;
xr_old = 0;
xr = 0;
ea = 0;
cdata = {};
cdata(1, :) = {"xl", "xu", "xr", "Ea", "ea"};
iter = 1;

display(sprintf("xl\t\t\t\txu\t\t\t\txr\t\t\t\tEa\t\t\t\tea") + "");  

while 1
    xr = xu -  (fx(xu) * (xu - xl))/(fx(xu)- fx(xl));
    if flag
        Ea = abs(xr - xr_old);
        if(xr ~= 0)
            ea = abs((Ea / xr) * 100);
            output = sprintf("%-15.5f%-15.5f%-15.5f%-15.5f%-15.5f",  xl, xu, xr, Ea, ea);
            cdata(iter, :) = {xl, xu, xr, Ea, ea};
            display("" + output);
        if(Ea < abs(tolerance) | iter > max_iter)
            out_l = xl;
            out_u = xu;
            out_r = xr;
            break;
        end
        end
    end
    if(fx(xr) * fx(xu) < 0)
        xl  = xr;
    else if(fx(xr) * fx(xl) < 0)
            xu = xr;
        else
            display("no answer");
            break;
        end
    end
    xr_old = xr;
    flag = 1;



end

