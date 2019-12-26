function number = getNumJumbles()
% getNumJumbles
%
% Returns a valid number of jumbles to solve by repeatedly asking the 
% user until the user enters a valid value.  A value is not valid if:
% - it is not a scalar
% - it is not an integer
% - it is not positive
%
% If the value is not valid, a message is displayed indicating why.
%
% Output: a valid number of jumbles to attempt
%

test = true;
flag = 0;

while test == 1
if flag < 1
    choice = input('Number of jumbles to attempt: ');
else
    choice = input('Try again: ');
end
flag = 1;
if isscalar(choice) == 0
    disp('Number must be a scalar');
    continue
end
if floor(choice) ~= choice
    disp('Number must be an integer');
    continue
end
if choice < 1
    disp('Number must be positive');
    continue
end
if isscalar(choice) == 1 && floor(choice) == choice && choice > 0
    test = false;
end
end
number = choice;