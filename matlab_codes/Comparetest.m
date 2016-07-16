clc
clear 
close all

Mu0 = 4*pi*1e-7;
omega = 2*pi*27*1e6;
Rc = [0.233333,0.233333,0.233333];
Zc = [0.3,0.6,0.9];
choice = 'y';
while choice == 'y'

r = input('Enter the r value:');
z = input('Enter the z value:');
result = 0.0;


for i= 1:length(Rc)
    k = getk(Rc(i),Zc(i),r,z);
    result = result + getG(k)*Mu0*omega*sqrt(Rc(i)/r)/2/pi;
end
result
choice = input('Enter Choice :','s');
end
