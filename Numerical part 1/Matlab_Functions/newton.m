function [ xr, cdata ] = newton( xi, fx, es, max_iter , m )

syms x;
func = diff(fx, x);
ea = 0;

i = 0;
cdata = {};
cdata(1, :) = {"xi", "Ea",  "ea"};
iter = 2;
while i< max_iter
    
    xj = xi - m * eval((subs(fx,x,xi))) / eval( (subs(func,x,xi)));
%     fprintf('%f   %f\n', xj, xi);
    
    if xj ~= 0 & ~isnan(xj) & ~isinf(xj)
        Ea = abs(xj - xi);
        ea = abs(Ea / xj) * 100;
        fprintf('iter: %d,  xi: %.6f,  Ea: %.6f,  ea: %.6f\n',i,xi, Ea, ea);
        cdata(iter, : ) = {xi, Ea, ea};
        if(ea < es)
            break;
        end
    else if isnan(xj)
            if(eval((subs(fx,x,xi))) == 0)
                xj = xi;
                cdata(iter, : ) = {xi, 0, 0};
                break;
            end
        else if isinf(xj)
                xj = xi;
                cdata(iter, : ) = {xi, Ea, ea};
                break;
            end
        end
    
    end
    iter = iter + 1;
    
    xi = xj;
    
    i = i + 1;
end
xr = xj;

end

