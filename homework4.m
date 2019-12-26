%% CS368 Spring 2018 Homework Assignment 4
% * Name: Mo Felonda
% * Due Date: Wednesday, April 17 by 11:59 pm


%% Problem 1: Interpolation

clear
figure % create a new figure window for plotting

% a

xData = [0 .25 .75 1.25 1.5 1.75 1.875 2 2.125 2.25];
yData = [1.2 1.18 1.1 1 .92 .8 .7 .55 .35 0];

x = 0 : .01 : 2.25;
coef = polyfit(xData, yData, 9);
disp('Coefficients of interpolating polynomial');
disp(coef);

% b

eq = polyval(coef, x);
plot(xData, yData, 'gd', x, eq, 'k.-');
xlabel('x');
ylabel('y');
axis([0 2.25 0 1.5]);
hold on;

% c

spl = spline(xData, yData, x);
plot(x, spl, 'r-');
legend('Data','10^{th} degree polynomial','Spline');

% d

fprintf('y(0.5) using 10th degree polynomial: %f\n', polyval(coef, 0.5));
fprintf('y(0.5) using spline function: %f\n', spline(xData, yData, 0.5));

%% Problem 2: Approximation

clear
figure % create a new figure window for plotting

% a

xData = [1.00 2.12 3.09 5.23 7.64 9.14 11.2 14.3 16.1 18.3 22.7 25.0];
yData = [2.43 2.21 2.07 1.79 1.63 1.58 1.49 1.42 1.39 1.34 1.27 1.24];
u = xData.^-1;
y = linspace(1,25,12);
for i = 1:12
   y(i) = u(i).^-2 + u(i).^1 + u(i) + u(i)*xData(i);
end

var = polyfit(xData, yData, 3);

fprintf('a = %f\n', var(1));
fprintf('b = %f\n', var(2));
fprintf('c = %f\n', var(3));
fprintf('d = %f\n', var(4));

%b

xx = 1:25;
eq = polyval(var, xx);

plot(xData, yData, 'd');
axis([0 25 0 2.5]);
hold on
plot(xx, eq, 'r-.');
hold off

%c

fprintf('y(10.5) using approximating function: %f\n', polyval(var, 10.5));

%% Problem 3: Heat Plate

% Linear equations for each unknown temperature T_1 through T_9:
% T1 = (TA + T2 + T4) / 3
% T2 = (T1 + T3 + T5) / 3
% T3 = (T2 + T6) / 2
% T4 = (T1 + T5 + T7) / 3
% T5 = (T2 + T4 + T6 + T8) / 4
% T6 = (T3 + T5 + T9) / 3
% T7 = (T4 + T8) / 2
% T8 = (T5 + T7 + T9) / 3
% T9 = (T6 + T8 + TB) / 3

temps = heatPlate(50, 75);
disp(temps);


