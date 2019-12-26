function solved = solveOneJumble(word)
% solveOneJumble
%
% Takes one argument (the word to guess), creates a jumble out of it, 
% and repeatedly allows the user to guess the word (or quit guessing).
%
% Input:
%   word   the word the user is to guess
%
% Output: true (1) if the jumble was correctly solved; 
%         false (0) otherwise (i.e., the user decided to quit)
%
solved = false;
jumble = randperm(6);
while word(jumble) == word
    jumble = randperm(6);
end
disp(word(jumble));
guess = input('Enter guess or Q to quit: ', 's');
while guess ~= 'Q'
    if guess == 'q'
        break
    end
    if checkGuess(guess, word) == 1
        disp('Correct');
        solved = true;
        break
    end
    disp(word(jumble));
    guess = input('Enter guess or Q to quit: ', 's');
end
if guess == 'Q'
    fprintf('The word was: %s\n', word);
end
if guess == 'q'
    fprintf('The word was: %s\n', word);
end

% The comments below outline what this function should do:

% create a jumble out of the word by scrambling the letters
% (making sure that the scrambled word is different than the 
%  original word)

% repeatedly
%     display the jumbled word
%     ask user to guess the correct word (or enter Q to quit)
%     if user made a guess, 
%         check if guess is correct (if it is, display "Correct")
%     if user decided to quit, display the correct word
% until user has either guessed the correct word or decided to quit 

% return true (1) if the jumble was correctly solved 
% or false (0) if user decided to quit before solving it
