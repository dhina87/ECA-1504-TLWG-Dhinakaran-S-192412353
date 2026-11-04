// Quarter-wave transformer
clear; clc;
ZL=100; Z0=50; c=3e8;
Zt=sqrt(Z0*ZL);
fvals=[100 200 300 500]*1e6;
mprintf("Transformer impedance = %.3f ohms\n",Zt);
mprintf("f(MHz)\tQuarter-wave length(m)\n");
for f=fvals
 lambda=c/f;
 mprintf("%g\t%.5f\n",f,lambda/4);
end
