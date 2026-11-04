// Single-stub matching: formula helper
clear; clc;
Z0=60; ZL=100+%i*30; f=100e6; c=3e8;
lambda=c/f; beta=2*%pi/lambda;
zL=ZL/Z0; yL=1/zL;
mprintf("Normalized load impedance = %g + j%g\n",real(zL),imag(zL));
mprintf("Normalized load admittance = %g + j%g\n",real(yL),imag(yL));
mprintf("lambda = %g m, beta = %g rad/m\n",lambda,beta);
mprintf("Use the Smith-chart/derived stub equations from the lab record for d and l.\n");
