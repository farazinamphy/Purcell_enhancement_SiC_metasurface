%%this code generates 2D scattering patterns in xz and yz planes corresponding to any spectral position  
% theta values are varied randomly by t variable.
t = linspace(0,2.*pi);
% the value of scattering coefficient of various multipoles are inputted
% from the scattering cross section spectra plot
a1 = input('the value of scattering coefficient of ED is a1 =');
a2 = input('the value of scattering coefficient of EQ is a2 =');
b1 = input('the value of scattering coefficient of MD is b1 =');
b2 = input('the value of scattering coefficient of MQ is b2 =');
Sperp2 = (3.*a1 + (3.*b1 + 5.*a2).*cos(t) + 5.*b2.*cos(2.*t)).^2;
Sprll2 = (3.*b1 + (3.*a1 + 5.*b2).*cos(t) + 5.*a2.*cos(2.*t)).^2;
% plotting scattreing pattern in the yz plane
polarplot(t,Sperp2,'r')
hold on
% plotting scattreing pattern in the xz plane
polarplot(t,Sprll2,':b')
hold off
title('Scattering pattern at 862nm');
legend('y-z plane','x-z plane')