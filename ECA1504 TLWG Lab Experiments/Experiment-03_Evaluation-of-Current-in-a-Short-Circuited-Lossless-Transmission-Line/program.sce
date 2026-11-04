// Short-circuited lossless line: receiving-end current
clear; clc;
Zo=600; beta=0.1; l=0.05; Is=10; // edit to match the selected case
// For a short-circuited lossless line, input impedance is j*Zo*tan(beta*l).
Zin=%i*Zo*tan(beta*l);
I=Is; // source-current reference; adjust according to lab circuit definition
mprintf("Input impedance = %g + j%g ohms\n",real(Zin),imag(Zin));
mprintf("Current reference = %g A\n",I);
