function result = meters2feet_inches(meters)
% This function converts height in meters to feet and inches
% Input: meters
% Output: feet and inches

inches = meters * 39.3701;
feet = floor(inches/12);
inches = inches - (feet * 12);

result = [feet, inches]
end