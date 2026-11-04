// SWR from load and characteristic impedance
clear; clc;
Z0=50;
ZLvals=[650 700 750 800 850 50];
mprintf("ZL(ohm)\tReflection coefficient magnitude\tSWR\n");
for k=1:length(ZLvals)
 ZL=ZLvals(k); K=(ZL-Z0)/(ZL+Z0);
 SWR=(1+abs(K))/(1-abs(K));
 mprintf("%g\t%.5f\t%.4f\n",ZL,abs(K),SWR);
end
