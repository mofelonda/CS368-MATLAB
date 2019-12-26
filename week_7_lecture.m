%% Lecture 7 Functions

%% inch2meter
clear
clc
disp('inch2meter')
inch2meter(3)
help inch2meter
inch2meter(72)

%% Functions get their own workspace
disp('functions get their own workspace')
meters = 55
inch2meter(72)
meters = inch2meter(72)

%% pounds2kilograms
disp('pounds2kilograms')
pounds2kilos(165)

%% BMI
disp('bmi')
bmi(6, 0, 167.9)
height = [6; 5]
inches = [0; 6]
weight = [167.9; 135]
bmi(height, inches, weight)

%% returning multiple results
disp('returning multiple results')
Meters2Feet_Inches_separate(1.8)
Rs = Meters2Feet_Inches_separate(1.8)
[Rs1, Rs2] = Meters2Feet_Inches_separate(1.8)
Rc = Meters2Feet_Inches_combined(1.8)
meters = [ 1.8, 1.7]
Rc = Meters2Feet_Inches_combined(meters)
Rc = Meters2Feet_Inches_combined(meters')
meters = meters'
[Rs1, Rs2] = Meters2Feet_Inches_separate(meters)
a = Meters2Feet_Inches_separate(meters)


