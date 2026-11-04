clear; clc;
f=2000; G=4e-6; C=8e-6; w=2*%pi*f;

// Sweep 1: vary R, with L fixed at 3 mH/km
L=3e-3;
Rvals=[10 20 30 40 50];
mprintf("\nTEST CASE 2A: VARYING R (L=3 mH/km)\n");
mprintf("R(ohm/km)\tRe(Z0)\tIm(Z0)\tAlpha\tBeta\n");
for R=Rvals
    Z0=sqrt((R+%i*w*L)/(G+%i*w*C));
    gamma=sqrt((R+%i*w*L)*(G+%i*w*C));
    mprintf("%g\t%.5f\t%.5f\t%.6f\t%.6f\n",R,real(Z0),imag(Z0),real(gamma),imag(gamma));
end

// Sweep 2: vary L, with R fixed at 10 ohm/km
R=10;
Lvals=[3.5 6 8.5 11.5]*1e-3;
mprintf("\nTEST CASE 2B: VARYING L (R=10 ohm/km)\n");
mprintf("L(mH/km)\tRe(Z0)\tIm(Z0)\tAlpha\tBeta\n");
for k=1:length(Lvals)
    L=Lvals(k);
    Z0=sqrt((R+%i*w*L)/(G+%i*w*C));
    gamma=sqrt((R+%i*w*L)*(G+%i*w*C));
    mprintf("%.1f\t%.5f\t%.5f\t%.6f\t%.6f\n",L*1000,real(Z0),imag(Z0),real(gamma),imag(gamma));
end
