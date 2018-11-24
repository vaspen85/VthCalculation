Na = [2.*10.^17 5.*10.^17 8.*10.^17 2.*10.^18 5.*10.^18 8.*10.^18 10.^19 2.*10.^19];
x = log10(Na);
QM = [-.1 0 .1 .2 .4 .6 .7 1];
Cl = [-.1 -.1 0 .1 .2 .3 .4 .7];
DVth = QM - Cl;
Wstr = {'QM', 'Cl', 'ÄVth'}
Estr = {'log10(Na)'}
plot(x,DVth,'d-',x,QM,'x-',x,Cl,'s-')
xlabel('log10(Na)')
ylabel('Vth')
title('Vth as a function of log10(na)')
legend(Wstr{:})
