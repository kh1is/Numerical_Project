function [ out_l, out_u, out_r, bisect_cell_data] = bisectAlgorithm( xl, xu, fx, tolerance, max_iter )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

flag = 0;
xr_old = 0;
xr = 0;
ea = 0;
iter = 1;
bisect_cell_data = {};
bisect_cell_data(1, :) = {"xl", "xu", "xr", "Ea", "ea"};
display(sprintf("xl\t\t\t\txu\t\t\t\txr\t\t\t\tEa\t\t\t\tea") + "");   
while 1
    xr = (xu + xl) / 2;
    if flag
        Ea = abs(xr - xr_old);
        if(xr ~= 0)
            ea = abs((Ea / xr) * 100);
            output = sprintf("%-15.f%-15.5f%-15.5f%-15.5f%-15.5f",  xl, xu, xr, Ea, ea);
            bisect_cell_data(iter, :) = {xl, xu, xr, Ea, ea};
            display("" + output);
        if(Ea < abs(tolerance) | iter > max_iter)
            out_l = xl;
            out_u = xu;
            out_r = xr;
            break;
        end
        end
        
   
    end
    iter  = iter + 1;
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
%%uitable('ColumnName',cell_arr(1, :),'Data',cell2mat(cell_arr(2:end, :)))

