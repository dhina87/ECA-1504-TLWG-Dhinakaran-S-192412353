clear; clc;
R=10; L=3.5e-3; G=4e-6; C=8e-6; f=2000;
w=2*%pi*f;
Z0=sqrt((R+%i*w*L)/(G+%i*w*C));
gamma=sqrt((R+%i*w*L)*(G+%i*w*C));
mprintf("Z0 = %.5f + j%.5f ohms\n",real(Z0),imag(Z0));
mprintf("Alpha = %.6f neper/km\n",real(gamma));
mprintf("Beta = %.6f rad/km\n",imag(gamma));
