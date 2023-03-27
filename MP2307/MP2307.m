Vout = 1.2;
Vref = 0.925;
R2 = 10e3;
R1 = R2*(Vout-Vref)/Vref
Fs = 340e3;
dIL = 0.25;
Vin = 4.5;
L = (Vout/(Fs * dIL)) * (1 - Vout/Vin)
Iload = 3;
Ilp = Iload + (Vout/(2 * Fs * L)) * (1 - Vout/Vin)
Ic1 = Iload * sqrt((Vout/Vin) * (1 - Vout/Vin))
C1 = 0.8 * 2 * 22e-6;
dVin = (Iload/(C1 * Fs)) * (Vout/Vin) * (1 - Vout/Vin)
C2 = 0.8 * 2 * 47e-6;
Resr = 0.001;
dVout = (Vout/(Fs * L)) * (1 - Vout/Vin) * (Resr + 1/(8 * Fs * C2))
Rload = Vout/Iload
Gcs = 5.2;
Aea = 400;
Avdc = Rload * Gcs * Aea * (Vref/Vout)
Gea = 820e-6;
Fc = Fs * 0.1;

R3 = (2 * pi * C2 * Fc)/(Gea * Gcs) * (Vout/Vref)
R3 = 5.1e3

C3 = 4/(2 * pi * R3 * Fc)
C3 = 4.7e-9

C6 = (C2 * Resr)/R3
C6 = 15e-12

Fp1 = Gea/(2 * pi * C3 * Aea)
Fp2 = 1/(2 * pi * C2 * Rload)
Fp3 = 1/(2 * pi * C6 * R3)
Fz1 = 1/(2 * pi * C3 * R3)