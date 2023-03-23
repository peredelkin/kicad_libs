Vref = 0.8;
Vggm = 800;
Vout = 2.5;
Voutmax = Vout + 0.04;
Ven = 1.25;
Vinmin = 5;
Vinmax = 15;
Vstart = Vinmin;
Vstop = 4;

Ien1 = 1*10^-6;
Ien2 = 3*10^-6;
Iss = 2*10^-6;
Tss = 5*10^-3;
Rvsns1 = 10*10^3;
Ioutmax = 3.5;

Cbulk = 10*10^-6;
ESRbulk = 3*10^-3;

Cout = 47*10^-6;
ESRout = 3*10^-3;
Nc = 2;

Fsw = 1*10^6;
Fc0max = 75*10^3;

Kind = 0.3;

Lout = 2.5*10^-6;

D = Vout/(Vinmin+((Vinmax-Vinmin)/2));

Voppmax = 10*10^-3;

Roa = 8.696*10^6;

Ren1 = (Vstart - Vstop)/Ien2;
Ren2 = Ven/(((Vstart - Ven)/Ren1) + Ien1);
printf("Ren1 = %d\n", Ren1);
printf("Ren2 = %d\n", Ren2);

Css = (Tss * Iss)/Vref;
printf("Css = %d\n", Css);

Rvsns2 = (Rvsns1 * Vref) / (Vout - Vref);
printf("Rvsns1 = %d\n", Rvsns1);
printf("Rvsns2 = %d\n", Rvsns2);

Vinripple = (Ioutmax * 0.25) / (Cbulk * Fsw * 0.8) + (Ioutmax * ESRbulk);
printf("Vinripple = %d\n", Vinripple);

Iripple = Ioutmax / 2;
printf("Iripple = %d\n", Iripple);

Lmin = (Voutmax * (Vinmax - Vout))/(Vinmax * Kind * Ioutmax * Fsw * 0.8);
printf("Lmin = %d\n", Lmin);
printf("Lout = %d\n", Lout);

Ilpp = (Vout * (Vinmax - Vout)) / (Vinmax * Lout * Fsw * 0.8);
printf("Ilpp = %d\n", Ilpp);

Ilrms = sqrt(Ioutmax^2 + (((Vout * (Vinmax - Vout))/(Vinmax * Lout * Fsw * 0.8))^2)/12);
printf("Ilrms = %d\n", Ilrms);

Ilpk = Ioutmax + ((Vout * (Vinmax - Vout))/(1.6 * Vinmax * Lout * Fsw));
printf("Ilpk = %d\n", Ilpk);

Coutmin = 1/(2*pi*(Vout/Ioutmax)*Fc0max);
printf("Coutmin = %d\n", Coutmin);

Vopp = Ilpk*((D-0.5)/(4*Fsw*Cout*Nc) + ESRout);
printf("Vopp = %d\n", Vopp);

ESRmax = (Voppmax/Ilpp) - ((D-0.5)/(4*Fsw*Cout*Nc));
printf("ESRmax = %d\n", ESRmax);

Icoutrms = (1/sqrt(12))*((Vout * (Vinmax - Vout))/(Vinmax * Lout * Fsw * Nc));
printf("Icoutrms = %d\n", Icoutrms);

#Compensation Components






