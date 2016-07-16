clc
clear 
close all

k = 0:0.02:1;
Kint = 0* k';
Eint = Kint;
Gint = Eint;
for i=1:length(k)
    Kint(i) = getKint(k(i));
    Eint(i) = getEint(k(i)) ;
    Gint(i) = getG(k(i));
end