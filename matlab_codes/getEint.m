function [ Eint] = getEint(k)
%GETKINT Returns the value of K integral 
% Takes in the parameter k and returns the value of the KIntegral
 
Eint = ellipticE(k^2);

end