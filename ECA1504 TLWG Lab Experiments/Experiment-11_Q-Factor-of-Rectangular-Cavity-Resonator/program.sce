// Rectangular cavity TE101 Q-factor calculation
clear; clc;
a=0.05; b=0.04; d=0.10; sigma=5.8e7; mu=4*%pi*1e-7;
f=3.335e9; omega=2*%pi*f;
Rs=sqrt(%pi*f*mu/sigma);
Q=omega*mu*a*b*d/(2*Rs*(2*b*(a^3+d^3)+a*d*(a^2+d^2)));
mprintf("Surface resistance = %.6f ohms\n",Rs);
mprintf("Q factor (TE101) = %.2f\n",Q);
