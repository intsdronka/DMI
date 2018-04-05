R1=1; R2=2; R3=3; R4=4; R5=5; R6=6; R7=7; E1=1; E2=2; E3=3;
R = [R1+R2+R3 -R2 0; -R2 R2+R4+R5 -R5; 0 -R5 R5+R6+R7];
E = [E1; -E2; -E3]; 
Ik=R\E;

%% cits gadījums
%trīs laika momenti
%trīs sprieguma vērtības 
E1=[1 -1 0];
E2=[2 -2 0];
E3=[3 -3 0];
E = [E1; -E2; -E3];
%risināsim vienādojuma sistēmu
Ik=R\E;
%atrast IR1
IR1 = Ik(1,:);
%atrast UR1
UR1=IR1*R1;
%atrast PR1
PR1=IR1.*UR1;

%% laika mainīgie signāli
t = 0:0.01:1;
E1 = 2*cos(2*pi*2*t);
E2 = 5*ones(size(t));
E3 = 3*sin(2*pi*3*t);
%risināsim vienādojumu sistēmu 
Ik = R\E;
%atrast un uzzīmēt IR6
E = [E1; -E2; -E3];
IR6 = Ik(3,:);
%atrast un uzzīmēt UR6 PR6 uz tā paša grafika
UR6=IR6*R6;
PR6=IR6.*UR6;
plot(t,IR6,t,UR6,t,PR6)

%% Kā pārbaudīt vai nekur neesam kļūdījušies ar kirhofa sprieguma likumu
%3. kontūram, Ckontūram
% UR6+UR7+UR5=-E3
% UR6+UR7+UR5+E3===0
% Utst = UR6+UR7+UR5+E3;
% plot (t,Utst)
% rezultāts ko sagaidam Utst = 0
IR5 = Ik(3,:)-Ik(2,:);
UR5 = IR5*R5;
IR7 = Ik(3,:);
UR7 = IR7*R7;
Utst = UR6+UR7+UR5+E3;
plot (t,Utst)
