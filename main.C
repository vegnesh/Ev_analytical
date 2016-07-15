#include <iostream>
#include <math.h>
#include "evsol.h"
using namespace std;
int main()

{

char abc[] = "coordinates_custom.dat";
char h= 'y';
double a=0.108,b=0.15,c=0.00,d=0.05,a1,a2,a3,a4;
a1=getk(a,b,c,d);
a2=getG(a,b,c,d);
a3=getKint(a1);
a4=getEint(a1);

double mu0 = 4e-7*acos(-1.0);  
double omega = 2*acos(-1.0)*27e6;
double solution =0;
a4=solev(c,d,abc);
cout<<a2;
while (h=='y'){
cout<<"\n Enter the r value:";
cin>>c;
cout<<"\n Enter the z value:";
cin>>d;
a4 = solev(c,d,abc);
solution = a4*mu0*omega/2.0/acos(-1.0);

cout<<"The solution value is :"<<solution<<endl;
cout<<"Continue?: ";
cin>>h;
}
double k = 0.0;

while(k<=1.0){

//    cout<<"\nk:"<<k<<" K(k):"<<getKint(k)<<" E(k):"<<getEint(k)<<" H(k):"<<getG2(k);
    k = k+0.02;
}


}

