clear; clc;
R=10; L=9e-3; G=4e-6;
Cvals=[8 10 12 14 16]*1e-6;
fvals=2000:2000:10000;

mprintf("TEST CASE 3A: FREQUENCY SWEEP (C=8 microF/km)\n");
C=8e-6;
mprintf("f(Hz)\tRe(Z0)\tIm(Z0)\tAlpha\tBeta\n");
for f=fvals
    w=2*%pi*f;
    Z0=sqrt((R+%i*w*L)/(G+%i*w*C));
    gamma=sqrt((R+%i*w*L)*(G+%i*w*C));
    mprintf("%g\t%.5f\t%.5f\t%.6f\t%.6f\n",f,real(Z0),imag(Z0),real(gamma),imag(gamma));
end

mprintf("\nTEST CASE 3B: CAPACITANCE SWEEP (f=2.5 kHz)\n");
f=2500; w=2*%pi*f;
mprintf("C(F/km)\tRe(Z0)\tIm(Z0)\tAlpha\tBeta\n");
for k=1:length(Cvals)
    C=Cvals(k);
    Z0=sqrt((R+%i*w*L)/(G+%i*w*C));
    gamma=sqrt((R+%i*w*L)*(G+%i*w*C));
    mprintf("%.2e\t%.5f\t%.5f\t%.6f\t%.6f\n",C,real(Z0),imag(Z0),real(gamma),imag(gamma));
end
