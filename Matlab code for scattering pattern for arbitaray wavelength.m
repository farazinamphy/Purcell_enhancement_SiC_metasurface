t = linspace(0,2.*pi);
a1 = input('the value of scattering coefficient of ED is a1 =');
a2 = input('the value of scattering coefficient of EQ is a2 =');
b1 = input('the value of scattering coefficient of MD is b1 =');
b2 = input('the value of scattering coefficient of MQ is b2 =');
Sperp2 = 15*(0.0533.*(3.*a1 + (3.*b1 + 5.*a2).*cos(t) + 5.*b2.*cos(2.*t)).^2);
Sprll2 = 15*(0.0533.*(3.*b1 + (3.*a1 + 5.*b2).*cos(t) + 5.*a2.*cos(2.*t)).^2);
%yz plane
polarplot(t,Sperp2,'r')
hold on
%xz plane
polarplot(t,Sprll2,':b')
hold off
title('Scattering pattern at arbitrary wavelength (nm)');
legend('y-z plane','x-z plane')