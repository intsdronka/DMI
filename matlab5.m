function lab5
global E R i0 a
R=1; i0=10*exp-6; a=1;
t = 0:0.01:1;
Et = 100*cos(2*pi*t);
Urt = [];
for E = Et
    Ur = newmet5;
    Urt = [Urt,Ur];
end
plot(t,Et,t,Urt)

function x0 = newmet5(x0,epsilon)
if nargin == 0
    x0=0;
    epsilon = 1e-3;
end
delta = funx(x0)/fund(x0);
while abs(delta) > epsilon 
    delta = funx(x0)/fund(x0);
    x0 = x0-delta;
end

function fx = fund(UR)
%funx atvasinājums
%a=1; i0=1; E=1; R=1;
global E R i0 a
fx = - 1/R - a*i0*exp(a*(E - UR));

function fx = funx(UR)
%i0=1; a=1; E=1; R=1;
global E R i0 a
fx = i0*(exp(a*(E-UR))-1)-UR/R;
