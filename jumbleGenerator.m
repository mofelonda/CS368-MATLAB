%% CS368 Spring 2018 Homework Assignment 6
% * Name: Mo Felonda
% * Due Date: Friday, May 3 by 11:59 pm
%
% Jumble Generator
%
% This is the main script for the Jumble Generator.  
% The comments below outline what the script should do.
% 
clear

% Read in a list of 6-letter words from a file
% Note: do not change this code
fileID = fopen('words_6_ltrs.txt', 'r');
sizeWords = [6, Inf];
words = fscanf(fileID, '%s', sizeWords);
words = words';


% Ask the user for the number of jumbles they wish to attempt
numJum = getNumJumbles;


% For each jumble to attempt
%     select a word at random from the list of words 
%     create a jumble from the word and ask the user to solve it
solved = 0;
for i = 1 : numJum
    options = randperm(1508);
    word = words(options(1),:);
    solved = solved + solveOneJumble(word);
end


% Display the number of jumbles attempted and number of jumbles solved
fprintf('# jumbles attempted: %i\n', numJum);
fprintf('# jumbles solved: %i\n', solved);