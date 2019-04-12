function [ a ] = readLine( str )
%READLINE Summary of this function goes here
%   Detailed explanation goes here

    temp = str(2);
        
    temp = strsplit(char(temp),",");
    
    test = temp(1);
    test = split(test , "[");
    test2 = test(2);
    temp(1) = test2;
    
    test = temp(length(temp));
    test = split(test , "]");
    test2 = test(1);
    temp(length(temp)) = test2;
    
    for i = 1 : length(temp)
       a(i) = str2double(temp(i)); 
    end
    
end

