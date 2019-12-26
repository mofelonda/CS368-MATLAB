%% week 12

%% if example - defensive programming
clc
choice = input('Enter yes, no or maybe: ', 's');
if length(choice) == 3 & choice == 'yes'
    disp('you picked yes')
elseif length(choice) == 2 && all( choice == 'no')
    disp('you picked no')
elseif length(choice) == 5 && all( choice == 'maybe')
    disp('you picked maybe')
else 
    disp('Unknown choice')
end


%% yet another if example - check first letter
clc
choice = input('Enter yes, no, or maybe: ', 's');
if choice(1) == 'y' || 'Y'
    disp('you picked yes')
elseif choice(1) == 'n' || choice(1) == 'N'
    disp('you picked no')
elseif choice(1) == 'm' || choice(1) == 'M'
    disp('you picked maybe')
else
    disp('unknown choice')
end

% try these 
% if choice(1) == 'y' || choice(1) == 'Y'
% if choice(1) == 'y' || 'Y'
% if choice(1) == ('y' || 'Y')
% if choice(1) == ['y' || 'Y']

%% cell array access
clc
ca = {[1 2 3] , 'yes' , [1 2 ; 3 4]}


%% switch statement
clc
control_variable = 3
switch (control_variable)
    case 1
        disp('control variable is 1')
    case 2
        disp('control variable is 2')
    otherwise
        disp('control variable is not a 1 or 2')
end

%% cell array and switch statement
clc
clc
choice = input('Enter yes, no or maybe: ', 's');
switch (choice)
    case {'y', 'Y', 'yes', 'Yes'}
        disp('you picked yes')
    case {'n', 'no', 'never'}
        disp('you picked no')
    otherwise
        disp('you picked something else')
end

%% while loop + break / continue
% how many rolls does it take until we roll ten threes
clc
threes = 0
rolls = 0
while threes < 10
   top = randperm(6,1)
   rolls = rolls + 1
   if top == 3
       threes = threes + 1
   end
end
disp([' it took ' num2str(rolls), ' rolls to get ten threes'])

%% loop notes
% for loops count controlled loops
% we know exactly how many times they will execute
% control vector that we can't change
% control variable that is reset at the end of every iteration

% while loops are sentinel controlled loops
% we don't know how many times the loop will iterate
% we can change the sentinel variable

%% break - perfect squares
% perfect squares have integer square roots
clc 
for i = [4 9 16 20 24 25 36 49]
    if rem(sqrt(i),1) ~= 0
        break
    end
    disp(sqrt(i))
end

%% continue - perfect squares
% perfect squares have integer square roots
clc 
for i = [4 9 16 20 24 25 36 49]
    if rem(sqrt(i),1) ~= 0
        continue
    end
    disp(sqrt(i))
end


%% linked list
clc
list = []
list = [list 1]
list = [list 2]

list =[]
for i=1:10
    list = [i, list, i]
end


%% string operations
% strcmp and strcmpi
clear
clc
str1 = 'hello';
str2 = 'world';
str3 = 'CS 368';
str4 = 'World';

% str1 == str2
% str1 == str3
strcmp(str2, str4)
strcmpi(str2,str4) % case insensitive

%% More string operations
% lower
clc
lower('Mike')


%% More string operations
% upper
clc
upper('Mike')

%% More string operations
% strcat - note: removes trailing white space
% use vector version to keep all characters
clc
a = '   mike   '
b = 'doescher  '
c = [a , b]
strcat(a,b)


%% strfind
clear
clc
s = 'How much wood would a woodchuck chuck?'
strfind(s, 'a')
strfind(s, 'wood')

%% Input Validation

% Write a program to get an employee ID and a password from a user. 
% First, the program should repeatedly prompt the user for an ID until the user enters a valid ID. 
% Then the program should repeatedly prompt the user for a password until the user enters a valid password. 
% An ID is valid if it is a 7 digit number (and the first digit can't be 0).
% A password is valid if it meets the following two criteria:
% It is at least 6 but no more than 10 character long
% The first character is a letter or an underscore


