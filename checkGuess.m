function yesNo = checkGuess(guess, correct)
% checkGuess
%
% Checks if guess and correct are the same string (ignoring case).
% If they are not, a message is displayed indicating why.
%
% Inputs:
%   guess    a string representing the user's guess
%   correct  the correct word
%
% Output: true (1) if guess and correct are the same (ignoring case); 
%         false (0) otherwise
%

if strcmpi(guess, correct)  % if the strings are the same (ignoring case)
	yesNo = 1;
	
	
else % otherwise, if the strings are not the same

	yesNo = 0;
	
	% display message if guess doesn't have the right number of letters
	if length(guess) ~= length(correct)         
		disp('guess is not the correct length')
		
	% or if guess doesn't contain the same letters as the correct word
	elseif ~strcmpi(sort(guess), sort(correct))
		disp('guess does not contain the correct letters')
	end
end