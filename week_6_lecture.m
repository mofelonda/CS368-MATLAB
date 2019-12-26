%% Week 6
% Input / Output / File Saving / Loading

%% Input / output
% input without 's' requires string input with quotes
name = input('What is your name')
% Mike - fails
name = input('What is your name')
% 'Mike' - needs quotes to enter a string
prompt = 'What is your name '
name = input(prompt)
% 'Mike'

%% Matrix Input
% requires a valid matlab vector or matrix
M = input('Enter a valid matlab matrix ')
% [ 1 2 ; 3 4]

%% Disp
disp(' text to print to the screen' )
prompt = 'what is the current  temperature in degrees Fahrenheit? '
degrees_F = input(prompt)
% 15
degrees_C = (5/9)* (degrees_F - 32)
disp ( [ 'the current temperature is ', num2str(degrees_C), ' Celsius' ] )

%% string input
name = input('what is your name ', 's')
% Mike - no quotes required
name = input('what is your name ', 's')
% 'Mike' - with quotes it stores a six character string including the quotes
number = input('enter a number ', 's')
% 1234 - reads the number as a string / doesn't work for doing math
number + 3
'1' + 0 % charcters as stored as ascii codes '1' = code 49
number = input('enter a number ')
% 1234 % without the 's' this reads as a number
number + 3

%% menu
choice = menu('Choose color:', 'red', 'blue', 'black', 'green')
color_code = ['r', 'b', 'k', 'g' ]
color_code(choice)
xx= 1:100;
yy = xx.^1.25;
plot(xx,yy, color_code(choice))

%% File Input / Output
% save('filename', 'variable_name', '-ascii')
Matrix_M = [1 2; 3 4]
save('saveM.txt', 'Matrix_M', '-ascii')
save('saveM.txt', 'Matrix_M', '-mat')
save('saveM.txt', 'Matrix_M', '-ascii', '-tabs')
save('saveM.txt', 'Matrix_M', '-ascii', '-double')
save('saveM.txt', 'Matrix_M', '-ascii', '-double', '-append')
save()
load('matlab.mat') % this version does match names with data
save('all_variables.txt') % just save all the numbers but without remembering what data goes with which variable name
clear
% load('all_variables.txt') tries to load this file as a single matrix -
% fails if the data in the file is not rectangular
load() % same as load('matlab.mat') the default save file
load('matlab.mat')
clear
load('saveM.txt')
M = load('saveM.txt') % store the matrix in a variable

%% saving multiple variables
x= 3
y = 5
save('xy.txt', 'x', 'y', '-ascii') % doesn't keep track of which variable is which
x = 1:2
save('xy.txt', 'x', 'y', '-ascii') % no longer a rectangular block of data


%% num2str(value, precision)
x = 8/3
num2str(x, 3)
num2str(x, 15)
num2str(x, 45)
x = 5.0000
num2str(x, 45)

%% fprintf -- file print format
% fprintf('string', variable1, variable2, variable3)
fprintf('my name is %s', 'Mike') % use '%' to signal to insert variable here
fprintf('my name is %s \n', 'Mike') % use \n to put in a newline
% \ is an escape character to represent things like newlines, tabs, and other special charcters
fprintf('my \t\t\tname is %s \n', 'Mike') % \t for tabs

x = 0.123456789
fprintf('the value of x is %d \n', x) %d integer
fprintf('the value of x is %de \n', x) % I made a typo here
fprintf('the value of x is %e \n', x) %e exponential notation
fprintf('the value of x is %f \n', x) %f fixed point notation
fprintf('the value of x is %g \n', x) %g compact notation

x=3
fprintf('the value of x is %d \n', x)
fprintf('the value of x is %e \n', x)
fprintf('the value of x is %f \n', x)
fprintf('the value of x is %g \n', x)

% width and precision
x=0.123456789
fprintf('the value of x is %g \n', x)
fprintf('the value of x is %18.4g \n', x)
fprintf('the value of x is %-18.4g \n', x)
fprintf('the value of x is %-2.4g \n', x)
fprintf('the value of x is %2.4g \n', x)
fprintf('the value of x is %.4g \n', x)
fprintf('the value of x is %.24g \n', x)
fprintf('the value of x is %.24e \n', x)
x=1.2
fprintf('the value of x is %.6e \n', x)
percent = 95
% how to write out a percent sign
fprintf('i got a %d%% in class \n',percent)
