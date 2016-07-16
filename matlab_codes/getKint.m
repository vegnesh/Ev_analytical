function [ Kint] = getKint(k)
%GETKINT Returns the value of K integral 
% Takes in the parameter k and returns the value of the KIntegral

Kint = ellipticK(k^2);

end

