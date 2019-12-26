for i = [1 3 5]
    i
end

%% logical values
% try different data and see how Matlab converts them to boolean values
x = true
x = 1
x = 0
x = false
x = 'a'
x = 97
x = -5
x = 1.2345
if x
    disp ('true')
else 
    disp('false')
end


%% relational operations
% == < > <= >= ~=

3<5
5<3
4 ~= 3
[1 1] == [1 1]
[4 4] == [4 4]
[1 2 3 4 5 ] ~= [5 4 3 2 1]

%% logical operator
% & && | || ~

1 & 1
1 & 0
1 && 1
0 && 1
1 | 0

%% & vs &&
[ 1 1 ] & [ 1 0 ]
%[ 1 1 ] && [ 1 0 ]

%% transforming a boolean vector to a scalar
any([1 2 0 ])
all([1 2 0 ])

%% short-circuit evaluation - guarding
name = 'mike'
%name = 'michael'
(length(name) >=6 && name(6) == 'e')
% name = 'Joe'
% name(4)=='e'

%% if statements
boolean_condition = true
if boolean_condition
    disp ('true')
end

boolean_condition = false
if boolean_condition
    disp ('true')
else % does not require a condition
    disp ('false')
end

%% elseif = parallel conditions
x = 2
if x < 5
    disp ('<5')
elseif x < 7
    disp ('<7')
elseif x < 11
    disp ('<11')
else
    disp ('>=11')
end

%% nested if statements - decision tree
x = 14
if ~mod(x,3)
    if ~mod(x,5)
        disp ('x is divisible by 3 and 5')
    else
        disp('x is divisible by 3')
    end
else
    if ~mod(x,5)
        disp('x is divisible by 5')
    else
        disp('x is not divisible by 3 or 5')
    end
end

%% vectors in if statements
if [1 0] % same as using the all statement
    disp ('true')
else 
    disp ('false')
end

%% Strings 
choice = input('enter yes or no ', 's')
if choice == 'yes'
    disp('you entered yes')
elseif choice == 'no'
    disp ('you entered no')
else
    disp ('unknown input')
end


