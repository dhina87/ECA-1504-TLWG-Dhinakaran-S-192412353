// Voltage minimum position (lossless line)
clear; clc;
Z0=50; ZLvals=[50 60 70 80];
f=300e6; c=3e8; lambda=c/f;
mprintf("ZL(ohm)\t|Gamma|\tSWR\n");
for k=1:length(ZLvals)
 ZL=ZLvals(k); K=(ZL-Z0)/(ZL+Z0);
 SWR=(1+abs(K))/(1-abs(K));
 mprintf("%g\t%.4f\t%.4f\n",ZL,abs(K),SWR);
end
mprintf("Wavelength = %g m; use reflection-coefficient phase to locate Vmin.\n",lambda);
