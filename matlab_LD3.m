function y = LD_3(t)
t_zero_f = (t>=0)&(t<1.5); t_zero = t(t_zero_f);
t_sin_f = (t>=1.5)&(t<3); t_sin = t(t_sin_f);
t_const_f = (t>=3)&(t<4.5); t_const = t(t_const_f);
t_noise_f = (t>=4.5)&(t<5); t_noise = t(t_noise_f);
t_saw_f = (t>=5)&(t<=6); t_saw = t(t_saw_f);


y_zero = -1.5*ones(size(t_zero));
A0=0; A = 1.5; T = (2.5-1)/7.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*(f)*(t_sin-delay));
y_const = zeros(size(t_const));
y_noise = rand(size(t_noise))*1.5-0.75;
k = (2-0)/(5-6);
delay = 6;
y_saw = k*(t_saw-delay);
t = [t_zero,t_sin,t_const,t_noise,t_saw];
y = [y_zero,y_sin,y_const,y_noise,y_saw];

if nargout == 0
    plot(t,y);
    grid on
    ylim([-2 2])
end
