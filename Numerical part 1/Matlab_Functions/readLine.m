function [ a ] = readLine( str )
%READLINE Summary of this function goes here
%   Detailed explanation goes here
Read and display the file fgetl.m one line at a time:
fid = fopen('fgetl.m','r');
tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
end
fclose(fid);

    
end

% 1         | 1      | // a number from 1 to 7 to select the method (bisection ,..., general alg.)
% 
% 2         | exp(-x).*(3.2*sin(x)-0.5*cos(x)) | // The equation
% 
% 3         | [1 3] | // interval in case of bisection or single point in case of newton and so on
% 
% 4         | 0.001 | tolerance
% 
% 5         | 50      | max num of iterations