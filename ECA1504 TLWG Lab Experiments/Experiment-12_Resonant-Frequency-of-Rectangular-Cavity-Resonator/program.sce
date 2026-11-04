// Rectangular cavity resonant frequencies
clear; clc;
c=3e8; a=0.05; b=0.03; d=0.09; er=1; mur=1;
mprintf("a(cm)\tTE101(GHz)\tTM110(GHz)\n");
for acm=5:1:9
 a=acm/100;
 fTE=(c/(2*sqrt(er*mur)))*sqrt((1/a)^2+(1/d)^2);
 fTM=(c/(2*sqrt(er*mur)))*sqrt((1/a)^2+(1/b)^2);
 mprintf("%g\t%.4f\t%.4f\n",acm,fTE/1e9,fTM/1e9);
end
