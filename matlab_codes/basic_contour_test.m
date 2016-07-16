clc
clear 
close all

r = linspace(0,1,100);
z = linspace(-2,3,100);

%[X,Y] = meshgrid(r,z);

Mu0 = 4*pi*1e-7;
omega = 2*pi*27*1e6;
Rc = [0.233333,0.233333,0.233333];
Zc = [0.3,0.6,0.9];

Result = zeros(length(z),length(r));

for i=1:length(z)
    for j = 1:length(r)
        for m = 1:length(Rc)
        k = getk(Rc(m),Zc(m),r(j),z(i));
        Result(i,j) = Result(i,j) + Mu0*omega*sqrt(Rc(m)/r(j))*getG(k)/2/pi;
        end
    end
end
contour(r,z,Result);
