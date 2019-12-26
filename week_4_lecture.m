%% Week 4
% Code from the lecture

%% Matrices

% direct assignment
M = [ 11:15 ; 21:25 ; 31:35 ]
M ( 2, 4 )

% submatrix access - use range operator
%M( all rows , columns 1,2,3)
M (  : , 1:3)

% even more complicated things are possible with vector access
%M ( row stuff, column stuff) as vectors
M ([3,1 ] ,[2,5,4 ]  )

%transpose
M'

% get matrix dimensions
M
size(M)
length(M)
% length returns the bigger dimension

%% special matrices

zeros(3)
zeros(2, 3)
ones(4)
ones( 3, 1)
%diag( [vector ] )
diag( [ 2,4,5,4,6 ] )
%diag( matrix)
M
diag(M)
eye(3)
eye( 3, 2)
M

%% out of bounds access

% reading
% x = M(5, 7) % fails if out of bounds
% write - expands the matrix
M(5,7) = 57

%% strings
% vectors of characters
s = 'hello world'
c = s(3)
c = s(3:5)
% to include ' in the string
% s = 'string with ' an apostrophe ' % this fails
s = 'string with '' an apostrophe '
s = '''hello world'''
color1 = 'red'
color2 = 'blue'

%% string concatenation
% mix = color1 + color2 % this fails
color1 = 'reds'

% same length strings - element-wise addition
mix = color1 + color2

% string concatenation
mix =  [color1, '+', color2   ]

%% letters are stored as ascii code (numbers)
% adding zero will force Matlab to translate the character into a number
'r'+0
'b' + 0

%% accessing characters in a string
mix ( length(color1) + 1) = 's'
mix ( length(mix) + 1) = 's'
mix(6:end) = 'black'
color1
color1([1,2] ) = 'fo'
% the number of characters replaced must match the number accessed
% color1([1,2,3] ) = 'fo' % this fails
%% disp
% disp short for display

% disp( exactly one vector )
% disp(color1, color2) % this fails
disp([color1, color2])
color1 = 'red'
disp([color1, color2])

%% to display numbers turn them into strings
disp([color1, num2str(2), color2])

%% Math

% + and -
r = [ 1 2; 3 4 ]
s = [2 3 ; 4 5 ]
r + s
s-r
% make r bigger
r( 3, 2) =6
% s + r % error dimensions don't agree
r = [ 1 2; 3 4 ]

% multiplication
r * s
r.*s
r^2
r.^2
r.^1.5
r
r/2
r*3
r
x = [1;2]
r*x