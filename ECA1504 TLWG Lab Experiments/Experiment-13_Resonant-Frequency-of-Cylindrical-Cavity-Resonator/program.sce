// Cylindrical cavity resonator: approximate TM010 mode
clear; clc;
c=3e8; er=1; mur=1; a=0.05; // radius in metres
chi=2.405; // first zero of J0 for TM010
f=c*chi/(2*%pi*a*sqrt(er*mur));
mprintf("TM010 resonant frequency = %.4f GHz\n",f/1e9);
mprintf("Radius = %.3f m\n",a);
