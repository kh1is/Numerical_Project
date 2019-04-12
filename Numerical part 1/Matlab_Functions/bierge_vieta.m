function [ root, cdata ] = bierge_vieta( a_arr, p0, err, max_iter)
i = 2;
temp = size(a_arr);
temp = temp(1,2);
cdata = {};
cdata(1, :) = {"p0", "Ea", "ea"};
cdata(2, :) = {p0, NaN, 100};
ea = 100;
while i <= max_iter + 1
    b_arr = ones(1, temp);
    c_arr = ones(1, temp - 1);
    j = 2;
    while j <= temp
        b_arr(1, j) = a_arr(1, j) + p0 *  b_arr(1, j - 1);
        j = j + 1;
    end 
    j = 2;
    while( j <= temp - 1)
        c_arr(1, j) = b_arr(1, j) + p0 * c_arr(1,j - 1);
        j  = j + 1;
    end 
    
    p = p0 - b_arr(1,end) / c_arr(1,end);
    if(p ~= 0)
        Ea = abs(p - p0);
        ea = abs(Ea / p) * 100;
        cdata(i+ 1, :) = {p, Ea, ea};

        if(abs(ea) < abs(err))
            root = p;
            fprintf('iter: %d, xi: %.18f, Ea: %.18f, ea: %.18f\n',i,p,Ea,ea);
            break;
        end
    end
    fprintf('iter: %d, xi: %.18f, Ea: %.18f, ea: %.18f\n',i,p0,Ea,ea);

    p0 = p;
    i = i  + 1;
    
        
end
root =  p0;

