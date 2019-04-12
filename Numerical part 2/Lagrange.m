function [ F ] =  Lagrange( O,X,Y )

syms z
F = 0;
for i = 1:O+1
 l = 1;   
for j = 1:O+1
    if j ~= i
       l = expand(l* (z - X(j)) / (X(i)-X(j)));
    end
end
 F = expand(F + l * Y(i));
 F = vpa(F,10);
 
end



