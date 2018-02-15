%%Mērijumu datu apstrāde 
%1.lab.d
%doti merijumu dati
%kurus mēs noformēsim
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
%Uzzīmēsim grafiku
plot (Um,Im, 'o-')
%iznaca lauzta linija
%tas mums neder
%kāda matemātiska darbība apraksta  Im atkarību no Um
%%
%Pieņemsim ka sakaribu apraksta  2. kartas polinoms 
%y = C(1)*x.^2+C(2)*x+C(3);
%polinoma koeficientus atradīs matlab funkcija POLYFIT
%sintakse ir šāda 
%C = polyfit(x,y,N)
%kur N - ir polinoma kārta
C = polyfit (Um,Im,2)

C =

    0.1716    0.3662    1.5034

format compact
% lai iegūtu gludu liniju noformēsim vēlvienu "x"
U = -1:0.01:3.2;
%tad reķina "y"
I = C(1)*U.^2+C(2)*U+C*(3)
{Matrix dimensions must agree.} 
I = C(1)*U.^2+C(2)*U+C(3)
I =
  Columns 1 through 13
    1.3088    1.3090    1.3093    1.3096    1.3100    1.3103    1.3108    1.3112    1.3117    1.3122    1.3128    1.3134    1.3140
  Columns 14 through 26
    1.3147    1.3154    1.3161    1.3168    1.3176    1.3185    1.3193    1.3202    1.3212    1.3221    1.3231    1.3242    1.3253
  Columns 27 through 39
    1.3264    1.3275    1.3287    1.3299    1.3311    1.3324    1.3337    1.3351    1.3364    1.3379    1.3393    1.3408    1.3423
  Columns 40 through 52
    1.3439    1.3454    1.3471    1.3487    1.3504    1.3521    1.3539    1.3557    1.3575    1.3594    1.3613    1.3632    1.3652
  Columns 53 through 65
    1.3671    1.3692    1.3712    1.3733    1.3755    1.3777    1.3799    1.3821    1.3844    1.3867    1.3890    1.3914    1.3938
  Columns 66 through 78
    1.3962    1.3987    1.4012    1.4038    1.4064    1.4090    1.4116    1.4143    1.4170    1.4198    1.4226    1.4254    1.4282
  Columns 79 through 91
    1.4311    1.4341    1.4370    1.4400    1.4430    1.4461    1.4492    1.4523    1.4555    1.4587    1.4619    1.4652    1.4685
  Columns 92 through 104
    1.4718    1.4752    1.4786    1.4820    1.4855    1.4890    1.4926    1.4961    1.4998    1.5034    1.5071    1.5108    1.5145
  Columns 105 through 117
    1.5183    1.5221    1.5260    1.5299    1.5338    1.5378    1.5417    1.5458    1.5498    1.5539    1.5580    1.5622    1.5664
  Columns 118 through 130
    1.5706    1.5749    1.5792    1.5835    1.5879    1.5923    1.5967    1.6012    1.6057    1.6102    1.6148    1.6194    1.6240
  Columns 131 through 143
    1.6287    1.6334    1.6382    1.6429    1.6478    1.6526    1.6575    1.6624    1.6673    1.6723    1.6773    1.6824    1.6875
  Columns 144 through 156
    1.6926    1.6978    1.7029    1.7082    1.7134    1.7187    1.7240    1.7294    1.7348    1.7402    1.7457    1.7512    1.7567
  Columns 157 through 169
    1.7623    1.7679    1.7735    1.7792    1.7849    1.7906    1.7964    1.8022    1.8081    1.8139    1.8199    1.8258    1.8318
  Columns 170 through 182
    1.8378    1.8438    1.8499    1.8560    1.8622    1.8684    1.8746    1.8808    1.8871    1.8934    1.8998    1.9062    1.9126
  Columns 183 through 195
    1.9191    1.9256    1.9321    1.9387    1.9453    1.9519    1.9586    1.9653    1.9720    1.9788    1.9856    1.9924    1.9993
  Columns 196 through 208
    2.0062    2.0131    2.0201    2.0271    2.0341    2.0412    2.0483    2.0555    2.0626    2.0699    2.0771    2.0844    2.0917
  Columns 209 through 221
    2.0991    2.1064    2.1139    2.1213    2.1288    2.1363    2.1439    2.1515    2.1591    2.1668    2.1745    2.1822    2.1900
  Columns 222 through 234
    2.1977    2.2056    2.2134    2.2213    2.2293    2.2373    2.2453    2.2533    2.2614    2.2695    2.2776    2.2858    2.2940
  Columns 235 through 247
    2.3022    2.3105    2.3188    2.3272    2.3356    2.3440    2.3524    2.3609    2.3694    2.3780    2.3866    2.3952    2.4038
  Columns 248 through 260
    2.4125    2.4213    2.4300    2.4388    2.4476    2.4565    2.4654    2.4743    2.4833    2.4923    2.5013    2.5104    2.5195
  Columns 261 through 273
    2.5286    2.5378    2.5470    2.5562    2.5655    2.5748    2.5842    2.5935    2.6029    2.6124    2.6219    2.6314    2.6409
  Columns 274 through 286
    2.6505    2.6601    2.6698    2.6795    2.6892    2.6989    2.7087    2.7185    2.7284    2.7383    2.7482    2.7582    2.7682
  Columns 287 through 299
    2.7782    2.7883    2.7984    2.8085    2.8186    2.8288    2.8391    2.8493    2.8597    2.8700    2.8804    2.8908    2.9012
  Columns 300 through 312
    2.9117    2.9222    2.9327    2.9433    2.9539    2.9646    2.9752    2.9860    2.9967    3.0075    3.0183    3.0292    3.0400
  Columns 313 through 325
    3.0510    3.0619    3.0729    3.0839    3.0950    3.1061    3.1172    3.1284    3.1396    3.1508    3.1621    3.1734    3.1847
  Columns 326 through 338
    3.1961    3.2075    3.2189    3.2304    3.2419    3.2534    3.2650    3.2766    3.2882    3.2999    3.3116    3.3234    3.3351
  Columns 339 through 351
    3.3469    3.3588    3.3707    3.3826    3.3945    3.4065    3.4185    3.4306    3.4427    3.4548    3.4670    3.4791    3.4914
  Columns 352 through 364
    3.5036    3.5159    3.5282    3.5406    3.5530    3.5654    3.5779    3.5904    3.6029    3.6155    3.6281    3.6407    3.6534
  Columns 365 through 377
    3.6661    3.6789    3.6916    3.7044    3.7173    3.7302    3.7431    3.7560    3.7690    3.7820    3.7950    3.8081    3.8212
  Columns 378 through 390
    3.8344    3.8476    3.8608    3.8741    3.8873    3.9007    3.9140    3.9274    3.9408    3.9543    3.9678    3.9813    3.9949
  Columns 391 through 403
    4.0085    4.0221    4.0358    4.0495    4.0632    4.0770    4.0908    4.1046    4.1185    4.1324    4.1463    4.1603    4.1743
  Columns 404 through 416
    4.1884    4.2024    4.2166    4.2307    4.2449    4.2591    4.2733    4.2876    4.3019    4.3163    4.3307    4.3451    4.3596
  Columns 417 through 421
    4.3741    4.3886    4.4031    4.4177    4.4324
% zimesim grafiku 
% merijumu dati bus ar "o"
%pielaikotais polinoms ar liniju
plot(Um,Im,'o',U,I)

%%
% Lai iegutu labākus rezultātus paņemsim 3. kārtas polinomu 
polyfit(Um,Im,3)
ans =
    0.1838   -0.4328    0.3391    2.0688
polyfit (Um,Im,3)
ans =
    0.1838   -0.4328    0.3391    2.0688
U = -1:0.01:3.2;
I = C(1)*U.^3+C(2)*U^2+C*(3)*U+C(4)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Inputs must be a scalar and a square matrix.
To compute elementwise POWER, use POWER (.^) instead.} 
I = C(1)*U.^3+C(2)*U.^2+C*(3)*U+C(4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mtimes')" style="font-weight:bold"> * </a>
Inner matrix dimensions must agree.} 
I = C(1)*U.^3+C(2)*U^2+C(3)*U+C(4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Inputs must be a scalar and a square matrix.
To compute elementwise POWER, use POWER (.^) instead.} 
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
{Index exceeds matrix dimensions.} 
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
U = -1:0.01:3.2;
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
shg
%%
%Tagad izmegināsim arī citas kārtas
%%
% izmantosim POLYVAL funkciju
% tas pats kas iepriekš
C = polyfit(Um,Im,3);
%I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
I = polyval(C,U);
plot(Um,Im,'o'U,I)
 plot(Um,Im,'o'U,I)
               ↑
{Error: Unexpected MATLAB expression.
} 
plot(Um,Im,'o',U,I)
%%piebilde
% POLYFIT = POLYnominal FITting rēķina koeficientu
% POLYFIT = POLYnominal VALues rēķina vertibas

%% Atkārtosim 4.kartai
C = polyfit(Um,Im,4);
I = polyval(C,U);
plot(Um,Im,'o',U,I)
% pie kartaas vienādas ar punktu sakiatu -1
% iznak polinomiālā interpolācija, iet precīzi caur punktiem
%iepriekšējos gadījumus sauc par polinominālo aproksimilāciju

%%ja kārta ir parak liela  
C = polyfit(Um,Im,10);
[Warning: Polynomial is not unique; degree >= number of data points.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m', 70)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m',70,0)">line 70</a>)] 
I = polyval(C,U);
plot(Um,Im,'o',U,I)



%% Ja sakariba ir lineara
C = polyfit(Um,Im,1);
C
C =
    0.7434    1.6936
I = polyval(C,U);
plot(Um,Im,'o',U,I)


%% Vairākas merijumu serijas 
% pienemsim ka mes mainam spriegumu, bet stravu meram piecas reizes
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;

         0.8 2.1 2.5 3.5 4.4 ;
         1.0 2.1 2.3 3.4 4.6] 
Im =
    1.1000    2.2000    2.1000    3.2000    4.7000
    0.9000    1.8000    2.6000    3.3000    4.5000
    1.0000    2.0000    2.4000    3.4000    4.3000
    0.8000    2.1000    2.5000    3.5000    4.4000
    1.0000    2.1000    2.3000    3.4000    4.6000
%% ka  matlab zimes matricas?
figure,plot(Um,Im,'-o')
figure,plot(Um,Im,'o-')
% lai iznaktu pareizi, transponesim matricu
figure,plot(Um,Im','o-')
%% sec. Matlabs zimē matricas pa stabiņiem, lai polyfit varētu aprēķināt, ir jāpaņem vidējās vertibas
Ivid = mean(Im)
Ivid =
    0.9600    2.0400    2.3800    3.3600    4.5000
C = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
% uzzimesim 
% ar aplišiem apzimejiet merijumu datus
% ar melnam zvaigznitem apzimejiet videjo
% ar liniju apzimejiet pielaikoto polinomu
plot(Um,Im,'o',U,I)
shg
figure,plot(Um,Im','o-', Ivid,Um,'*k',U,I,'-')
figure,plot(Um,Im','o-',Um,Ivid'*k',U,I,'-')
{Undefined function or variable 'k'.} 
figure,plot(Um,Im','o-',Um,Ivid,'*k',U,I,'-')
figure,plot(Um,Im','o',Um,Ivid,'*k',U,I,'-')
%% kā attēlot videjo kvadratisko novirzi 
Ivid_kv_novirze = std(Im);
errorbar(Um,Ivid,Ivid_kv_novirze)
%% Datu iegusana no grafiski uzdotajiem datiem
cd

/home/user

ls
Desktop  DMI  Documents  Downloads  image1.JPG	image2.JPG  labl_diary.m  VirtualBox VMs

%% Pienemsim ka mums ir grafiks jpg formātā 
%1. ielasam jpg uz matkab
A = imread('image1.JPG');
B = imread('image2.JPG');
% 2.uzzimesim 
figure(1),image(A);
figure(2),image(B);
figure(1),image(A);
%%
figure(2),image(B);
shg
shg
shg
figure(2),image([0 14],[0 80],B);
figure(2),image([0 14],[80 0],B);
figure(2),image([0 14],[80 0],B);
set(gca,'YDir','normal')
shg
%% Tagad varam nolasit datus!!
shg
[x,y]=ginput(8)
x =
    3.5730
    4.0193
    4.9757
    6.9522
    8.9606
    9.9807
   10.9690
   12.0210
y =
    8.6821
   13.4817
   22.3612
   31.9605
   37.2402
   39.4000
   41.0799
   42.2799
diary off
