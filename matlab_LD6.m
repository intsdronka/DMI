%% videjas vertibas aprekins
t=0:0.01:6;
N=length(t);

%%
% ar formulu 3a(taisnsturi zem liknes)
xvid3a=1/(N-1)*sum(sig(t(1:end-1)))

%%
% ar formulu 3b (taisnsturi virs liknes)
xvid3b=1/(N-1)*sum(sig(t((1:end-1)+1)))
%xvid3b=1/(N-1)*sum(sig(t(2:end)))

%%
% ar 3c formulu
h = (t(end)-t(1))/(N-1)
xvid3c = 1/(N-1)*sum(sig(t(1:end-1)+(h/2)))

%%
% ar formulu 4
j = sum(sig(t(1:end-1)))
k = (sig(t(1)) + sig(t(N)))/2
xvid4 = (1/(N-1))* (j+k)

%% istas videjas vertibas aprekins
% * sinusoida

syms t_sin
A0=0; A = 1.5; T = (2.5-1)/7.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*(f)*(t_sin-delay));
delay  = 1;
int_sin = int(y_sin,t_sin,1.5,3)

%%
% *

syms t_saw
k = (2-0)/(5-6);
delay  = 6;
y_saw = k*(t_saw-delay);
int_saw = int(y_saw,t_saw,5,6)

%%
% *
syms t_const
y_const = 0; 
int_const = int(0,t_const,3,4.5)

%%
% Liekam visu kopa
ista_vv = double(1/6*(int_const+int_saw+int_sin))

%%
% Salidzinasim 3a formulu ar isto videjo vertibu
dt = [1 0.1 0.01 0.001]; % sie bus laika solis
xvid3am = [];
for dtc = dt
    t = 0:dtc:6;
    N=length(t);
    xvid3a=1/(N-1)*sum(sig(t(1:end-1)))
    xvid3am = [xvid3am,xvid3a];
end
semilogx(dt,xvid3am,'-o',dt,dt*0+ista_vv)
