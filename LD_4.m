%% Laboratorijas darbs 4
%% vards uzvaads
R1=1; R2=2; R3=10; R4=4; R5=5; R6=6; R7=7; R8=8;
R = [R8+R6 -R6 0; -R6 R6+R5+R7 -R7; 0 -R7 R1+R7+R4+R3+R2];
%% laika mainīgie signāli
t = 0:0.01:6;
E1 = 9 + zeros(size(t));
E2 = LD_3(t);
J3 = sin(3*t);
E = [E1; E2+J3*R7; -E1-J3*(R7*R4*R3)];
%risināsim vienādojumu sistēmu 
Ik = R\E;
IR1 = Ik(3,:);
%atrast un uzzīmēt UR6 PR6 uz tā paša grafika
UR1=IR1*R1;
PR1=IR1.*UR1;
plot(t,IR1,t,UR1,t,PR1)

%% Kā pārbaudīt vai nekur neesam kļūdījušies ar kirhofa sprieguma likumu
%3. kontūram, Ckontūram
% UR6+UR7+UR5=-E3
% UR6+UR7+UR5+E3===0
% Utst = UR6+UR7+UR5+E3;
% plot (t,Utst)
% rezultāts ko sagaidam Utst = 0
IR6 = -Ik(1,:)+Ik(2,:);
UR6 = IR6*R6;
IR5 = Ik(2,:);
UR5 = IR5*R5;
IR7 = Ik(2,:)-Ik(3,:)-J3;
UR7 = IR7*R7;
Utst = UR6+UR7+UR5-E2;
figure
plot (t,Utst)
%% Secinaajumi
% ko es iemācījos
