// Rectangular waveguide: TE10 mode velocities
clear; clc;
c=3e8; a=0.04; f=8e9;
fc=c/(2*a);
if f>fc then
 x=sqrt(1-(fc/f)^2);
 vp=c/x; vg=c*x;
 beta=(2*%pi*f/c)*x;
 mprintf("Cutoff frequency = %.4f GHz\n",fc/1e9);
 mprintf("Phase velocity = %.4e m/s\n",vp);
 mprintf("Group velocity = %.4e m/s\n",vg);
 mprintf("Phase constant = %.4f rad/m\n",beta);
else
 mprintf("Below cutoff.\n");
end
