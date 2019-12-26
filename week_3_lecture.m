%% lecture code from week 3
clear
clc

%% using the command window 
principal = 2500
years = 5, interest = 0.0125
principal * (1+interest) ^ years

%% formatting numerical results
format compact
format bank
principal * (1+interest) ^ years
format long
principal * (1+interest) ^ years
format long g
principal * (1+interest) ^ years
format short g
principal * (1+interest) ^ years

%% division operators
5/3
3\5

%% variable assignment :: name 'gets' expression
a = 5
a = a + 4

%% for is a reserved keyword (colored blue)
%for = 4

%% predefined words
% pi
pi
pi = 3
r=2
a = pi * r^2
pi
clear pi
my_pi = 3
%length
v = [ 1 2 3 4 5 ]
length(v)
height = 2, length = 4
%length(v)
clear length

%% which to determine the path to all functions with a particular name
which -all length
which -all sdarklthja

%% vectors
%direct entry
v = [ 1,2,3,4,5,4,5,3,6,7,4 ]
v = [ 2 4 3 6 4]
v2 = [ 2; 5; 7 ]

%%transpose
v2'
v
v'
b = v'
c = b'
v''
v

%% range operator :
v = 1 : 4
v = 1 : 4 : 11
v = 10 : 2 : 5
v = [ 2:4 :19 ]

%%concatenation
a = [ 2 34 5]
b = [6 4 6 ]
v = [ a , b]
v = [ a ; b]
b = [1,2,3,4]
v = [ a , b]
% matrices must be rectangular
%v = [ a ; b]

%% element access ( )
v
v(2)
v(  [ 2 4 ] )
v(1, 4 )
%v(0)
%out of bounds
v
length(v)
%v(9)
v(9) = 5
d(5) = 0
v( 2:4 )
v
v ( 2:4) = -1
v (3:5) = [4,5,6]
v( [ 3 1 7  ])
v( 2 : 2 : length(v) ) = 11
v
v( 2:6)
m = v(2:6)

%% matrix direct assignment
m = [ 1 2 3; 2 3 4  ; 4 5 6  ]