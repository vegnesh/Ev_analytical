function [ G] = getG(k)
%GETKINT Returns the value of K integral 
% Takes in the parameter k and returns the value of the KIntegral
 
G = (2/k-k)*ellipticK(k^2) - 2/k*ellipticE(k^2);

end