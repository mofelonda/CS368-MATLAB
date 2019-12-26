%% polynomials in Matlab

% vector of coefficients in decending order of exponent
coef = [ -2 0 -12 2 -4 15 50  ]

% evaluate this polynomial from -2.8 to 2.8
xx = -2.8: 0.01: 2.8
% yy = -2 * xx.^6 - 12 * xx.^4 +2 * xx.^3 -4 * xx^2 + 15*xx + 50; % oops,
% remember elementwise .^
yy = -2 * xx.^6 - 12 * xx.^4 +2 * xx.^3 -4 * xx.^2 + 15*xx + 50;
figure(1)
plot(xx,yy)
%% polyval
% polyval uses a much more efficient algorithm
zz = polyval(coef, xx);
figure(2)
plot(xx,zz,'r') % same plot


%% Interpolation Approximation Examples

% some experimental data
xk=[1,  1.5,  3, 3.2, 3.5, 4.3, 5.7,   7, 7.15, 7.3,   8, 8.9, 9.5]
yk=[19,  22, 23,  24,  25,  30,  55,  82,   84,  86, 109, 119, 125]
figure(3)
plot(xk, yk, 'k*')

%% Interpolation
% goes through all of the points
coef = polyfit(xk, yk, 12)
xx = 1 :0.1: 9.5
yy = polyval(coef, xx);
figure(4)
plot(xx,yy,'r:', xk, yk, '*')

%% Approximation
% reasonably close to the points

% degree 2 polynomial (parabola)
coef2 = polyfit(xk, yk, 2)
yy = polyval(coef2, xx);
figure(5)
plot(xx,yy,'r:', xk, yk, '*')
% degree 1 polynomial (line)
coef1 = polyfit(xk, yk, 1)
yy = polyval(coef1, xx);
figure(6)
plot(xx,yy,'r:', xk, yk, '*')

%% Spline
% spline (xdata, ydata, x_values_to_evaluate)

yy = spline(xk, yk, xx)
figure(8)
plot(xx,yy,'r:', xk, yk, '*')

%% Note that we can evaluate these curves at a single point
yy = spline(xk, yk, 9.2)
