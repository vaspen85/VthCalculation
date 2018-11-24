m = 9.1.*10.^(-31);
k = 1.38.*10.^(-23);
T = 75:25:1500
h = (6.62.*10.^(-34));
Eg = 1.868.*10.^(-19)-(7.578.*10.^(-23).*T.^2)./(636+T)
PhiM = 8.*10.^(-19);
Na = (10.^(23));
e0 = 8.854.*10.^(-12);
Ks = 11.7;
x = 6.49.*10.^(-19);
q = 1.6.*10.^(-19);
tox = 2.*10.^(-9);
sNcNv = 2.*((2.*pi.*k.*T./(h.^2)).^1.5).*((1.1.*m.*.5.*m).^(3./4))
ni = log10(sNcNv.*exp(-Eg/(2.*k.*T)))
PhiF = (k.*T).*log(Na./ni)
PhiS = abs(x+(Eg./2)+PhiF)
Vth = (abs(PhiM-PhiS)./q)+2.*PhiF./q+sqrt(4.*q.*tox.*Na.*PhiF./(Ks.*e0));
plot(1000./T,ni)
xlabel('T')
ylabel('ni in m^-3')
title('ni as a function of T')
legend('ni')
