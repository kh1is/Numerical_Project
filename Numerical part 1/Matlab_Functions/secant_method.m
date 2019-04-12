function [ xr, cdata ] = secant_method(  xk, xi, fx, es, max_iter )
%SECANT_METHOD Summary of this function goes here
%   Detailed explanation goes here

syms x;
Ea = 0;
ea = 100;
i = 1;
cdata  = {};
cdata(1, : ) = {"xi-1", "xi", "xi+ 1", "Ea", "ea"};



while i<= max_iter
    
    xj = xi - eval((subs(fx,x,xi))) * (xk - xi) / (eval((subs(fx,x,xk))) - eval((subs(fx,x,xi))));
    
    Ea = abs(xj - xi);
    ea = abs(Ea / xj) * 100;
    
    if(ea < es)
        fprintf('iter: %d xi-1: %f,xi: %f,xi+1: %f,Ea: %f,ea: %f\n',i, xk, xi, xj,Ea, ea);
        cdata( i + 1, : ) = {xk, xi, xj, Ea, ea};
        break;
    end
    if(xj ~= 0)
        ea = (Ea / xj)  * 100;
        cdata( i + 1, : ) = {xk, xi, xj, Ea, ea};
  %      fprintf('xj: %f,xi: %f,xk: %f,ea: %f\n',xj, xi, xk, ea);
    end
    
    fprintf('iter: %d xi-1: %f,xi: %f,xi+1: %f,Ea: %f,ea: %f\n',i, xk, xi, xj,Ea, ea);
    xk = xi;
    xi = xj;   
    i = i + 1;
end
xr = xj;



end

