%% sinusoīda
t_sin = 1.5:0.01:3;
% y_sin = A0+A*sin(2*pi*f*(t-delay))
A0=0; A = 1.5; T = (2.5-1)/7.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*(f)*(t_sin-delay));
plot(t_sin,y_sin)
%% Lneāri mainīgs signāls 
t_saw = 5:0.01:6;
%y_saw = k*(t_saw-delay)
%k = (yA-yB)/(tA-tB) - līknes slīpuma koeficients
%delay - lai noteiktu delay ir jāskatās krustpunkts ar t asi (y=0)
k = (2-0)/(5-6);
delay = 6;
y_saw = k*(t_saw-delay);
plot(t_saw,y_saw)
%% Konstantes signāls 
t_const = 3:0.01:4.5;
y_const = zeros(size(t_const));
plot(t_const,y_const)
%% nuļļu signāls
t_zero = 0:0.01:1.5;
y_zero = -1.5*ones(size(t_zero));
plot(t_zero,y_zero)
%% Trokšņa signāls
t_noise = 4.5:0.01:5;
y_noise = rand(size(t_noise))*1.5-0.75;
plot(t_noise,y_noise)
%% signālu apvienošana 
t = [t_zero,t_sin,t_const,t_noise,t_saw];
y = [y_zero,y_sin,y_const,y_noise,y_saw];
plot(t,y)
ylim([-2.5 2.5])
xlim([0 6])
grid on
