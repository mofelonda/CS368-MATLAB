%% CS368 Spring 2019 Homework Assignment 2
% * Name: Mo Felonda


%% Problem 1: Creating a tip table
% Create and display a matrix with four columns:
%
% * column 1 contains bill totals from $5 to $100 in increments of $5
% * column 2 contains the tip amount if the tip is 15% of the bill
% * column 3 contains the tip amount if the tip is 18% of the bill
% * column 4 contains the tip amount if the tip is 20% of the bill
clear
format bank  % this will format money values nicely

% Add bill values
billTotals = [5:5:100];

% Calculate tips accordingly
fifteenP = billTotals * .15;
eighteenP = billTotals * .18;
twentyP = billTotals * .2;

% Create matrix
p1 = [billTotals; fifteenP; eighteenP; twentyP]'


format short % change formatting back to default setting

%% Problem 2: Density of freshwater
% Compute the density of freshwater given a temperature in F (temps)
%
% * First we convert the temperatures to C (cels)
% * Then we use the given equation (d = 5.5289×10^-8 TC^3 - 8.5016×10^-6 TC^2 +
% 6.5622×10^-5 TC + 0.99987) to compute the densities (dens)
% * Finally we create the strings to be displayed (p2a, p2b, p2c)

temps = [40, 68, 100];

% Convert F to C
cels = (5/9) * (temps - 32);

% Calculate density
dens = (5.5289 * 10.^-8) * (cels.^3) - (8.5016 * 10.^-6) * (cels.^2) + (6.5622 * 10.^-5) * cels + .99987;

% Create strings
p2a = ['Freshwater density is ', num2str(dens(1)), ' at ', num2str(temps(1)), ' F'];
p2b = ['Freshwater density is ', num2str(dens(2)), ' at ', num2str(temps(2)), ' F'];
p2c = ['Freshwater density is ', num2str(dens(3)), ' at ', num2str(temps(3)), ' F'];

% Display strings
disp(p2a)
disp(p2b)
disp(p2c)


%% Problem 3: Distance to horizon
% Plot the distance to the horizon vs hill heights on both Earth and Mars
%
% * First we compute the radius of each planet (planetRad) given their diameters
% * Then we create a vector for the range of hill heights from 0 to 10000
% (hillHeights)
% * Then we compute the distance to the horizon using the given equation (d =
% sqrt(2rh + h^2) (planet2horizon)
% * Finally we plot both relationships and add styling

% Calculate radii for each planet
earthRad = 7926 * 5280 / 2;
marsRad = 4217 * 5280 / 2;

% Create vector of hill heights
hillHeights = [0:100:10000];

% Calculate distances to the horizons
earth2horizon = ((2*earthRad*hillHeights) + hillHeights.^2).^.5;
mars2horizon = ((2*marsRad*hillHeights) + hillHeights.^2).^.5;

% Plot and add styling
clf
hold on
plot(hillHeights, earth2horizon, 'b--')
plot(hillHeights, mars2horizon, 'r-')
title('Distance to the Horizon from Hills on Earth and Mars by Hill Height')
xlabel('Hill Height (feet)')
ylabel('Distance to the Horizon (feet)')
legend('Hills on Earth','Hills on Mars')
hold off

% End