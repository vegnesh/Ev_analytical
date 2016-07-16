function [kval] = getk( Rc,Zc,r,z )
%GETK  Returns the k parameter value used in elliptic integrals
% Returns k value which is the function of coil location and physical
% location of interest

kval = sqrt(4*Rc*r./((z-Zc).^2+(Rc+r).^2));


end

