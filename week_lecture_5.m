%% Plotting and Publishing
% Today's topic is plotting and publishing scripts
%
% To start a new paragraph just put in a % line 
% with no text like the line 3 

%% Plotting 5 points
% Plot the points (1,1), (3,4), (5,8), (2,9), and (7,2)
% plot('xcoordinates', 'ycoordinates', 'specification string')
x = [ 1 3 5 2 7]
y = [1 4 8 9 2]
plot ( x, y)

%% Plot y = x^2
% Plotting another function. Use help to get all of the formatting options

help plot
% plot y = x^2 from 1 to 1000
x = [1 10 100 1000] % doesn't look good with only 4 points
y = x.^2
plot (x, y, 'r:v')

%% Plot with lots of points
xx = [1:1000]; % add ; to suppress the output 
yy = xx.^2; % use double letters to indicate lots of poitns
plot(xx,yy)


%% plot multiple sets of data two choices
% cos(xx) and cos(xx)/xx
xx = [1 : .01:  2*pi];
how_many_points = length(xx)
yy = cos(xx);
zz = cos(xx)./xx; % elementwise division
plot(xx, yy, 'r', xx, zz, 'b')

%% plot multiple sets of data with the hold on command 
clf %clear figure
% plot (xx, yy)
% plot (xx, zz) % this just overwrites the previous plot
% one plot per cell division unless you use the figure command
hold on
plot (xx, yy)
plot (xx, zz)
hold off

%% the figure command
% opens a new figure window
figure
plot (xx, zz)
figure(2) % you can use it to designate the active figure
plot (xx, zz)
hold on
plot (xx, yy)
hold off
plot ([1 2 3 ], [ 2 5 2]) % note matlab overwrites the last figure 

%% titles axis labels legends
figure (2)
clf
hold on
plot (xx, zz)
plot (xx, yy)
title( 'Awesome graph - check this out' )
xlabel('the x label')
ylabel('the y label')
legend('cos(xx)/xx ', 'cos(xx) ')
% help legend
% axis( [xmin, xmax, ymin, ymax ] )
axis( [0, 7, -0.2 ,0.2] )
axis( [0, 7, -1.2 ,1.2] )
axis square % makes the figure a square
axis equal % equal spacing between axis tick marks
hold off