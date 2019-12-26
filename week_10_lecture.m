%% roommate candy bar, pen, and notebook example
clc
disp('roommate candy bar, pen, and notebook example ')
M = [4 2 3; 0 3 1; 3 1 2]
b = [8.55 3.42 5.65]'
x = M\b
2*x(1) + x(3)

%% Juice Problem
disp('Juice Problem ')
M = [3,1,.5;.75,2.5,.5;.25,.5,3]
b = [7600 4900 3500]'*4
x=M\b

%% Example 1 : Roll a die 10 times and report top face
disp('Roll a die 10 times and report top face ')
for counter = 1 : 1 : 10
    die = randperm(6);
    top = die(1);
    disp(['Roll ', num2str(counter), ' : ', num2str(top) ] )
end

%% Example 2 : Increment other than 1
disp('Increment other than 1 ')
fprintf('*');
for v = 3 : 2 : 11
    fprintf('-*%d*-', v);
end
fprintf('*\n')
    
%% Example 3 : vector as counter controller
disp('vector as counter controller ')
fprintf('*');
for v = [5,23,5,4,56 ]
    fprintf('-*%d*-', v);
end
fprintf('*\n')
    
%% Experiment Time - 1) can we change the counter variable
disp('can we change the counter variable')
for k = 1:5
    disp(['k=',num2str(k)])
    k = 4
    disp(['k=',num2str(k)])
end


%% Experiment Time - 2) what if we change the control vector
disp('what if we change the control vector')
vec = [3,4,3,6,4 ]
for k = vec
    vec(3) = 9999
    disp(['k=',num2str(k)])
end

%% Example 6 Count the number of times each side shows up on top of a die when we roll it 1000 times
disp('Count the number of times each side shows up on top of a die when we roll it 1000 times')
% store the counts - start the counters at 0
topCount = zeros(1,6);
for count = 1:1000
   top = randperm(6,1);
   topCount(top) = topCount(top) + 1;
end
for k = 1:6
    disp(['face ' num2str(k) ':' num2str(topCount(k)), ' times']);
end
