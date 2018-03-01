%% Simboliskās konstantes
delta = sym(1/10)
 
delta =
 
1/10
 
delta = sym(1/10,'f')
 
delta =
 
3602879701896397/36028797018963968
 
delta = sym(1/10,'e')
 
delta =
 
eps/40 + 1/10
 


%% Piemērs par simboliskām matriām
A = hilb(3)

A =

    1.0000    0.5000    0.3333
    0.5000    0.3333    0.2500
    0.3333    0.2500    0.2000

sym(A)
 
ans =
 
[   1, 1/2, 1/3]
[ 1/2, 1/3, 1/4]
[ 1/3, 1/4, 1/5]
 
%% Atvasināšana
syms x
diff(x^2)
 
ans =
 
2*x
 
% Parciālie atvasinajumi
syms x y
z = x^2 + y^3
 
z =
 
x^2 + y^3
 
diff(z,x)
 
ans =
 
2*x
 
diff(z,y)
 
ans =
 
3*y^2
 
%%Daudzkartigie atvasinājumi
syms x
z = x^3
 
z =
 
x^3
 
diff(z,x,2)
 
ans =
 
6*x
 
sims x y
{Undefined function or variable 'sims'.
} 
sym x y
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('sym/assume', '/usr/local/MATLAB/R2016b/toolbox/symbolic/symbolic/@sym/sym.m', 517)" style="font-weight:bold">sym/assume</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/symbolic/symbolic/@sym/sym.m',517,0)">line 517</a>)
Expected input to match one of these values:

'integer', 'rational', 'real', 'positive', 'clear'

The input, 'y', did not match any of the valid values.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('sym', '/usr/local/MATLAB/R2016b/toolbox/symbolic/symbolic/@sym/sym.m', 192)" style="font-weight:bold">sym</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/symbolic/symbolic/@sym/sym.m',192,0)">line 192</a>)
                    assume(S, n);
} 
syms x y
z = x^6 + y^5
 
z =
 
x^6 + y^5
 
diff(diff(z,x,3),y,2)
 
ans =
 
0
 
%% Intetgrēšana
syms x
int(x^3)
 
ans =
 
x^4/4
 
syms x y
z = x^6 + y^5
 
z =
 
x^6 + y^5
 
int(z,x)
 
ans =
 
x^7/7 + x*y^5
 
int(z,y)
 
ans =
 
x^6*y + y^6/6
 
%% Noteiktais integrālis
syms x
y = x
 
y =
 
x
 
int(Y,X,0,5)
{Undefined function or variable 'Y'.
} 
int(y,x,0,5)
 
ans =
 
25/2
 
int(x^2,x,-3,3)
 
ans =
 
18
 
a = int(x^2,x,-3,3)
 
a =
 
18
 
double(a)

ans =

    18

a
 
a =
 
18
 
%% Robežas
limit(1/(x-1),x,1,'right')
 
ans =
 
Inf
 
limit(1/(x-1),x,1,'left')
 
ans =
 
-Inf
 
%% vienādojumu risināšana 
syms x 
solve(x^2-5*x+6,x)
 
ans =
 
 2
 3
 
solve(x^2-5*x+6==,x)
 solve(x^2-5*x+6==,x)
                  ↑
{Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
} 
solve(x^2-5*x+6==0,x)
 
ans =
 
 2
 3
 
%% Izteiksmju vienkāršojumi
syms x
y = (sin(x)^2) + (cos(x)^2)
 
y =
 
cos(x)^2 + sin(x)^2
 
simplify y
{Undefined function 'simplify' for input arguments of type 'char'.
} 
simplify(y)
 
ans =
 
1
 
%citi vienkarsosanas veidi
f = (x-1)*(x-2)*(x-5)
 
f =
 
(x - 1)*(x - 2)*(x - 5)
 
f1 = expand(f)
 
f1 =
 
x^3 - 8*x^2 + 17*x - 10
 
FACTOR(F1)
{Undefined function or variable 'F1'.
} 
factor(f1)
 
ans =
 
[ x - 5, x - 1, x - 2]
 
solve(f)
 
ans =
 
 1
 2
 5
 
syms x
h = x^5+x^4+x^3+x^2+x
 
h =
 
x^5 + x^4 + x^3 + x^2 + x
 
horner(h)
 
ans =
 
x*(x*(x*(x*(x + 1) + 1) + 1) + 1)
 
f1
 
f1 =
 
x^3 - 8*x^2 + 17*x - 10
 
horner(f1)
 
ans =
 
x*(x*(x - 8) + 17) - 10
 
%% Substitūcijas
syms x y
z = x^2+y^3
 
z =
 
x^2 + y^3
 
% y vietā ieliksim 5*x
subs(z,y,5*x)
 
ans =
 
125*x^3 + x^2
 
%% Rezultatu grafiskā attēlošana 
syms x
y = x^3-6*x^2+11*x-6;
ezplot(y)
ezplot(y,[-4 4])
%% Skaistākā formulu attēlošna 
syms x
y = (x-1)*(x-2)^2/((x-1)*(x-6)
 y = (x-1)*(x-2)^2/((x-1)*(x-6)
                               ↑
{Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
} 
y = ((x-1)*(x-2)^2)/((x-1)*(x-6))
 
y =
 
(x - 2)^2/(x - 6)
 
pretty(y)
       2
(x - 2)
--------
  x - 6

%% Skaistākā formulu attēlošna -2
   latex(y)

ans =

\frac{{\left(x - 2\right)}^2}{x - 6}

y2 = latex(y)

y2 =

\frac{{\left(x - 2\right)}^2}{x - 6}

y3 = ['$',y2,'$'];
text(0,0.5,y3,'Interpreter','latex','FontSize',32)
%% Kā attēlot formulu (ar vienkāršo plot)
% 1.Dots 
syms x
y = (x-1)*(x-2)/((x-3)*(x-4))
 
y =
 
((x - 1)*(x - 2))/((x - 3)*(x - 4))
 
% 2.Jāatrod atvasinājums
y_atv= diff(y)
 
y_atv =
 
(x - 1)/((x - 3)*(x - 4)) + (x - 2)/((x - 3)*(x - 4)) - ((x - 1)*(x - 2))/((x - 3)*(x - 4)^2) - ((x - 1)*(x - 2))/((x - 3)^2*(x - 4))
 
yatv = simplify(y_atv)
 
yatv =
 
-(2*(2*x^2 - 10*x + 11))/(x^2 - 7*x + 12)^2
 
% 3.Liksim x  - skaitļu vektoru
x = [-1:0.01:1];
% 4. Jāveic izteiksmju vektorizācija (jāieliek punktiņi pirms reiznājumu zīmēm)
y_vec = vectorize(y)

y_vec =

((x - 1).*(x - 2))./((x - 3).*(x - 4))

y_atv_vec = vectorize(y_atv)

y_atv_vec =

(x - 1)./((x - 3).*(x - 4)) + (x - 2)./((x - 3).*(x - 4)) - ((x - 1).*(x - 2))./((x - 3).*(x - 4).^2) - ((x - 1).*(x - 2))./((x - 3).^2.*(x - 4))

y_atv_vec = vectorize(yatv)

y_atv_vec =

-(2.*(2.*x.^2 - 10.*x + 11))./(x.^2 - 7.*x + 12).^2

%5. Jāliek x kā sakaitļu vektorus 
y_vec

y_vec =

((x - 1).*(x - 2))./((x - 3).*(x - 4))

y_num = ((x - 1).*(x - 2))./((x - 3).*(x - 4))

y_num =

  Columns 1 through 7

    0.3000    0.2988    0.2977    0.2965    0.2954    0.2942    0.2930

  Columns 8 through 14

    0.2919    0.2907    0.2895    0.2883    0.2871    0.2860    0.2848

  Columns 15 through 21

    0.2836    0.2824    0.2812    0.2800    0.2787    0.2775    0.2763

  Columns 22 through 28

    0.2751    0.2739    0.2726    0.2714    0.2702    0.2689    0.2677

  Columns 29 through 35

    0.2664    0.2652    0.2639    0.2627    0.2614    0.2602    0.2589

  Columns 36 through 42

    0.2576    0.2563    0.2551    0.2538    0.2525    0.2512    0.2499

  Columns 43 through 49

    0.2486    0.2473    0.2460    0.2447    0.2434    0.2421    0.2407

  Columns 50 through 56

    0.2394    0.2381    0.2368    0.2354    0.2341    0.2327    0.2314

  Columns 57 through 63

    0.2300    0.2287    0.2273    0.2260    0.2246    0.2232    0.2219

  Columns 64 through 70

    0.2205    0.2191    0.2177    0.2163    0.2149    0.2135    0.2121

  Columns 71 through 77

    0.2107    0.2093    0.2079    0.2065    0.2050    0.2036    0.2022

  Columns 78 through 84

    0.2008    0.1993    0.1979    0.1964    0.1950    0.1935    0.1921

  Columns 85 through 91

    0.1906    0.1891    0.1877    0.1862    0.1847    0.1832    0.1817

  Columns 92 through 98

    0.1803    0.1788    0.1773    0.1758    0.1743    0.1727    0.1712

  Columns 99 through 105

    0.1697    0.1682    0.1667    0.1651    0.1636    0.1621    0.1605

  Columns 106 through 112

    0.1590    0.1574    0.1559    0.1543    0.1528    0.1512    0.1496

  Columns 113 through 119

    0.1481    0.1465    0.1449    0.1433    0.1417    0.1401    0.1385

  Columns 120 through 126

    0.1369    0.1353    0.1337    0.1321    0.1305    0.1289    0.1273

  Columns 127 through 133

    0.1256    0.1240    0.1224    0.1208    0.1191    0.1175    0.1158

  Columns 134 through 140

    0.1142    0.1125    0.1109    0.1092    0.1076    0.1059    0.1042

  Columns 141 through 147

    0.1026    0.1009    0.0992    0.0975    0.0959    0.0942    0.0925

  Columns 148 through 154

    0.0908    0.0891    0.0874    0.0857    0.0840    0.0823    0.0806

  Columns 155 through 161

    0.0789    0.0772    0.0755    0.0738    0.0721    0.0703    0.0686

  Columns 162 through 168

    0.0669    0.0652    0.0635    0.0617    0.0600    0.0583    0.0566

  Columns 169 through 175

    0.0548    0.0531    0.0514    0.0497    0.0479    0.0462    0.0445

  Columns 176 through 182

    0.0427    0.0410    0.0393    0.0375    0.0358    0.0341    0.0324

  Columns 183 through 189

    0.0306    0.0289    0.0272    0.0255    0.0238    0.0220    0.0203

  Columns 190 through 196

    0.0186    0.0169    0.0152    0.0135    0.0118    0.0101    0.0084

  Columns 197 through 201

    0.0067    0.0050    0.0033    0.0017         0

y_num = eval(y_vec);
y_atv_num = eval(y_atv_vec);
% 6. zimesim plot funkciju
plot(x,y_num,x,y_atv_num)
% anotācija
y_ltx = latex(y);
y_atv_ltx = latex(yatv);
h=legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$']);
[Warning: Error updating Legend.

 Character vector must have valid interpreter syntax:
$\frac{\left(x - 1\right)\, \left(x - 2\right)}{\left(x - 3\right)\, \left(x -
4\right)}$
] 
[Warning: Error updating Legend.

 Character vector must have valid interpreter syntax:
$-\frac{2\, \left(2\, x^2 - 10\, x + 11\right)}{{\left(x^2 - 7\, x +
12\right)}^2}$
] 
set(h,'Interpreter','latex')
shg
diary off
