%% Fitting functions that are not polynomials with algebra
% fitting exponential function y = ae^(b*x)
xx = .01:.01:1.7;
yy = 3*exp(2*xx);

% make up some data - note a = 3 and b = 2
x = [.1 .6, 1.1, 1.6]
y = 3*exp(2*x)
figure(1)
plot(xx,yy,'r.', x,y,'*')
% try fitting as a parabola? not super great
figure(2)
parabola_coef = polyfit(x, y, 2);
zz = polyval(parabola_coef, xx);
plot(xx,yy,'r.', xx,zz,'k.')
% transform into capital Y
Y = log(y)
% fit as linear function Y = mx + b
coef = polyfit(x, Y, 1)
% first value of coef will be b and the second will be log(a)
b = coef(1)
a = exp(coef(2) )

%% Traffic Flow Problem
% problem set up done in lecture

% the equations translated into matrix form
M = [1 0 0 -1; -1 0 0 0; 0 0 1 1; 0 1 -1 0]
% right hand side vector
b = [-100; -300; 800; -200] % column vector
% variable vector x
x = M\b % x will be a column vector
% extract solution components from x
a = x(1)
b = x(2)
c = x(3)
d = x(4)

