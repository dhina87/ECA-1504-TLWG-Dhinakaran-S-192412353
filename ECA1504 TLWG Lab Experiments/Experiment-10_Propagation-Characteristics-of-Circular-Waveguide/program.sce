// Circular waveguide: cutoff and guide wavelength (TE/TM roots supplied)
clear; clc;
c=3e8; f=10e9; radius=0.0276;
chi=1.841; // first TE11 root; use the root specified for the required mode
lambda=c/f; kc=chi/radius; fc=c*kc/(2*%pi);
if f>fc then
 lambda_g=lambda/sqrt(1-(fc/f)^2);
 mprintf("Cutoff frequency = %.4f GHz\n",fc/1e9);
 mprintf("Free-space wavelength = %.5f m\n",lambda);
 mprintf("Guide wavelength = %.5f m\n",lambda_g);
else
 mprintf("Operating below cutoff.\n");
end
