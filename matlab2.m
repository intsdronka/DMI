solve(x + a sqrt(x)=b
 solve(x + a sqrt(x)=b
             ↑
{Error: Unexpected MATLAB expression.
} 
solve(x + a * sqrt(x)=b
 solve(x + a * sqrt(x)=b
                      ↑
{Error: The expression to the left of the equals sign is not a valid target for
an assignment.
} 
solve(x + a * sqrt(x) = b
 solve(x + a * sqrt(x) = b
                       ↑
{Error: The expression to the left of the equals sign is not a valid target for
an assignment.
} 
solve(x + a * sqrt(x) == b)
{Undefined function or variable 'x'.
} 
syms x
solve(x + a * sqrt(x) == b)
{Undefined function or variable 'a'.
} 
syms a
solve(x + a * sqrt(x) == b)
{Undefined function or variable 'b'.
} 
syms b
solve(x + a * sqrt(x) == b)
 
ans =
 
 (a/2 - (a^2 + 4*b)^(1/2)/2)^2
 (a/2 + (a^2 + 4*b)^(1/2)/2)^2
 
solve(x + a * sqrt(x) == b,x)
 
ans =
 
 (a/2 - (a^2 + 4*b)^(1/2)/2)^2
 (a/2 + (a^2 + 4*b)^(1/2)/2)^2
 
pretty(x)
x

y = solve(x + a * sqrt(x) == b,x)
 
y =
 
 (a/2 - (a^2 + 4*b)^(1/2)/2)^2
 (a/2 + (a^2 + 4*b)^(1/2)/2)^2
 
pretty(y)
/ /           2        \2 \
| | a   sqrt(a  + 4 b) |  |
| | - - -------------- |  |
| \ 2          2       /  |
|                         |
| /           2        \2 |
| | a   sqrt(a  + 4 b) |  |
| | - + -------------- |  |
\ \ 2          2       /  /

syms x
f(x) = x^3 + 4*x^2 + 10*x + 6 / ((3*x + 4) * (x^3 + 4))
 
f(x) =
 
10*x + 6/((3*x + 4)*(x^3 + 4)) + 4*x^2 + x^3
 
diff(f(x))
 
ans =
 
8*x - 18/((3*x + 4)^2*(x^3 + 4)) + 3*x^2 - (18*x^2)/((3*x + 4)*(x^3 + 4)^2) + 10
 
atv_f(x) = diff(f(x))
 
atv_f(x) =
 
8*x - 18/((3*x + 4)^2*(x^3 + 4)) + 3*x^2 - (18*x^2)/((3*x + 4)*(x^3 + 4)^2) + 10
 
x = [-2:0.01:-1];
plot(x,f(x),x,atv_f(x))
plot(x,f(x),x,atv_f(x))
f(x)_vec = vectorize(f(x))
 f(x)_vec = vectorize(f(x))
     ↑
{Error: The input character is not valid in MATLAB statements or expressions.
} 
vec_f(x) = vectorize(f(x))
{Subscript indices must either be real positive integers or logicals.
} 
%% No jauna
syms x
y = x^3 + 4*x^2 + 10*x + 6 / ((3*x + 4) * (x^3 + 4))
 
y =
 
10*x + 6/((3*x + 4)*(x^3 + 4)) + 4*x^2 + x^3
 
y_atv = diff(y)
 
y_atv =
 
8*x - 18/((3*x + 4)^2*(x^3 + 4)) + 3*x^2 - (18*x^2)/((3*x + 4)*(x^3 + 4)^2) + 10
 
y_atv = simplify(y_atv)
 
y_atv =
 
8*x - 18/((3*x + 4)^2*(x^3 + 4)) + 3*x^2 - (18*x^2)/((3*x + 4)*(x^3 + 4)^2) + 10
 
x = [-2:0.01:-1];
y_vec = vectorize(y)

y_vec =

10.*x + 6./((3.*x + 4).*(x.^3 + 4)) + 4.*x.^2 + x.^3

y_atv_vec = vectorize(y_atv)

y_atv_vec =

8.*x - 18./((3.*x + 4).^2.*(x.^3 + 4)) + 3.*x.^2 - (18.*x.^2)./((3.*x + 4).*(x.^3 + 4).^2) + 10

y_vec

y_vec =

10.*x + 6./((3.*x + 4).*(x.^3 + 4)) + 4.*x.^2 + x.^3

y_num = 10.*x + 6./((3.*x + 4).*(x.^3 + 4)) + 4.*x.^2 + x.^3;
y_num = eval(y_vec);
y_atv_num = eval(y_atv_vec);
plot(x,y_num,x,y_atv_num)
ylim([-1 1])
ylim([-100 100])
ylim([-1000 1000])
ylim([-2000 2000])
ylim([-1000 1000])
hold on
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h=legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$']);
[Warning: Error updating Legend.

 Character vector must have valid interpreter syntax:
$10\, x + \frac{6}{\left(3\, x + 4\right)\, \left(x^3 + 4\right)} + 4\, x^2 +
x^3$
] 
[Warning: Error updating Legend.

 Character vector must have valid interpreter syntax:
$8\, x - \frac{18}{{\left(3\, x + 4\right)}^2\, \left(x^3 + 4\right)} + 3\,
x^2 - \frac{18\, x^2}{\left(3\, x + 4\right)\, {\left(x^3 + 4\right)}^2} + 10$
] 
set(h,'Interpreter','latex')
diary off
