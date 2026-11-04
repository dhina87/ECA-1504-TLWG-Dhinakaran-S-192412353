// Secondary constants to primary constants
clear; clc;
f=2000; w=2*%pi*f;
Z0=100;                 // ohms: edit as required by test case
alpha=0.05; beta=0.20;  // propagation constant components (per km)
gamma=alpha+%i*beta;
Z=Z0;
Y=gamma^2/Z;
z=Z; y=Y;
R=real(z); L=imag(z)/w;
G=real(y); C=imag(y)/w;
mprintf("R = %g ohm/km\nL = %g H/km\nG = %g S/km\nC = %g F/km\n",R,L,G,C);
