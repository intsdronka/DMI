%% sinusoīda
t_sin = 1:0.01:2.5;
% y_sin = A0+A*sin(2*pi*f*(t-delay))
A0=0; A = 2.5; T = (2.5-1)/3.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
plot(t_sin,y_sin)
%% Lneāri mainīgs signāls 
t_saw = 6.5:0.01:8;
%y_saw = k*(t_saw-delay)
%k = (yA-yB)/(tA-tB) - līknes slīpuma koeficients
%delay - lai noteiktu delay ir jāskatās krustpunkts ar t asi (y=0)
k = (2.5-(-2.5))/(6.5-8);
delay = 7.25;
y_saw = k*(t_saw-delay);
plot(t_saw,y_saw)
%% Konstantes signāls 
t_const = 4.5:0.01:6.5;
y_const = 2.5; %nepareizi jo elementu skaitam (t un y) ir jābūt vienādam
%y_const = [2.5 2.5 2.5 2.5 2.5 jāuzraksta 201 reizi
y_const = zeros(1,201)+2.5; %viena rida 201 kolonna
y_const = ones(1,201)+2.5;
% šī pieeja arī nav korekta jo jaizmainīsies elementu skaits vektoram
% t_const, tad y_const neizmainīsies 
y_const = zeros(size(t_const))+2.5;
plot(t_const,y_const)
%% nuļļu signāls
t_zero = 0:0.01:1;
y_zero = zeros(size(t_zero));
plot(t_zero,y_zero)
%% Trokšņa signāls
t_noise = 2.5:0.01:4.5;
y_noise = rand(size(t_noise))*3-1.5;
plot(t_noise,y_noise)
%% signālu apvienošana 
t = [t_zero,t_sin,t_noise,t_const,t_saw];
y = [y_zero,y_sin,y_noise,y_const,y_saw];
plot(t,y)
ylim([-3 3])
xlim([0 8])
