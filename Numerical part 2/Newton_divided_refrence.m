function [ x ] = Newton_divided_refrence( x , y , order )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

n = order+1;
a(1) = y(1);
for k = 1 : n - 1
   d(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k));
end
for j = 2 : n - 1
   for k = 1 : n - j
      d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
   end
end   

for j = 2 : n
   a(j) = d(1, j-1);
end

a

syms z;

p = (a(1));

for i = 2 : order+1
    
    term = (a(i));
    
    for j = 1 : i -1 
    
      temp = (z - x(j));
      term = expand(term * expand(temp)) ;
        
    end
    
    p = expand(p + expand(term));
    
end

x = vpa(expand(p));

end

