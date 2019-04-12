function [ R ] =  ValueOfLagrange( O,X,Y,V )

F = Lagrange(O,X,Y);
R = zeros(size(V));
for i = 1:length(V)
    z=V(i);
    R(i)=subs(F);
end
