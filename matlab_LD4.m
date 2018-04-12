%% Laboratorijas darbs 4
%% Ints Dronka 171REB077 REBC02 1.kurss
%% Scenārijs
t = 0:0.01:6;
R1=1; R2=2; R3=10; R4=4; R5=5; R6=6; R7=7; R8=8;
R = [R8+R6 -R6 0; -R6 R6+R5+R7 -R7; 0 -R7 R1+R7+R4+R3+R2];
E1 = 9 + zeros(size(t));
E2 = LD_3(t);
J3 = sin(3*t);
E = [E1; E2+J3*R7; -E1-J3*(R7*R4*R3)];
Ik = R\E;
IR1 = Ik(3,:);
UR1=IR1*R1;
PR1=IR1.*UR1;
plot(t,IR1,t,UR1,t,PR1)

%% Pārbaude otrajam kontūram
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
% Ko es iemācījos:
% Iemācijos matlab programmā pielietot kontūrstrāvas paņēmienu lai aprēķinātu strāvas, spriegumus un jaudu dažādiem ķēdes elementiem.
% Apguvu kā pārbaudīt iegūtos rezultātus pielietojot Kirhofa strāvas un sprieguma likumus.  
% Iemācījos izveidot atskaiti matlabā.
