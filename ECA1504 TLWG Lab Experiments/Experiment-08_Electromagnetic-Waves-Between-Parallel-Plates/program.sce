// Parallel-plate guide wavelengths
clear; clc;
c=3e8; f=3e9; a_cm=[7.62 8.5 9.8 12 13];
lambda=c/f;
mprintf("Plate spacing(cm)\tCritical wavelength(cm)\tGuide wavelength(cm)\n");
for a=a_cm
 lambda_c=2*(a/100);
 if lambda < lambda_c then
   lambda_g=lambda/sqrt(1-(lambda/lambda_c)^2);
   mprintf("%g\t%g\t%g\n",a,lambda_c*100,lambda_g*100);
 else
   mprintf("%g\t%g\tBelow cutoff\n",a,lambda_c*100);
 end
end
