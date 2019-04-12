function [ prime ] = largest_prime( num )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

x = nextprime(sym(0));
y = num;

for i = 1:y
    
    if(num == 1)
        prime = x;
        break;
    elseif mod(num, x) == 0
        num = num / x;
     
    else
        x = nextprime(sym(x+1));
    end
    
end
    
    
end

