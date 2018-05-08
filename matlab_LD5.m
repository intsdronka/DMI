%% Laboratorijas darbs 5
%% Ints Dronka 171REB077 REBC02 1.kurss
%% Scenarijs
function lab5
global E R i0 a
R=1; i0=10*exp(-6); a=1;

t = 0:0.01:6;
Et = 100*LD_3(t);
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
global E R i0 a
fx = - 1/R - a*i0*exp(a*(E - UR));

function fx = funx(UR)
global E R i0 a
fx = i0*(exp(a*(E-UR))-1)-UR/R;
%% Secinajumi
%Izmantojot Nutona metodi izdevas iegut tuvinatu grafiku 3.laboratorijas
%dadrba signāla grafikam. No ieejas signala, kas bija negativs, izzeja
%ieguva nulles vertibu.
