function [feet, inches] = meters2feet_inchesOld(meters)
% This function converts height in meters to feet and inches
% Input: meters
% Output: feet and inches

inches = meters * 39.3701;
feet = floor(inches/12);
inches = inches - (feet * 12);

end