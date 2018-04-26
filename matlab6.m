%% Vidējās un efektivas vertibas apreikinasana
%% Videjas vertibas aprekins
t = 0:0.1:6;
N = length(t);
%%
% * ar formulu 3a
xvid3a = 1/(N-1)*sum(sig(t(1:end-1)))
%%
% ar formulu 3b
xvid3b = 1/(N-1)*sum(sig(t((1:end-1)+1)))
%% 
% ar formulu 3c
h = (t(end)-t(1))/(N-1);
xvid3c = 1/(N-1)*sum(sig(t(1:end-1)+(h/2)))
%%
% ar formulu 4
xvid4 = 1/(N-1)*((sig(t(1))+sig(t(N)))/2)+sum(sig(t(1:end-1)))
