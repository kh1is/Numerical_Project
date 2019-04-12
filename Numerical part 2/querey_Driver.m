function [ a ] = querey_Driver( x , y , order , querey )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

P = Newton_divided_refrence( x , y , order);

syms z;

for i = 1 : length(querey)

    z = querey(i);
    a(i) = subs(P);
    
end
end

