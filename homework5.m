%% CS368 Spring 2018 Homework Assignment 5
% * Name: Mo Felonda
% * Due Date: Friday, April 26 by 11:59 pm


%% Problem 1: Nested for loops
% Prints asterisks in a line based on the iterator n

for n = 1 : 1 : 12
    for m = 1 : 1 : n
        fprintf('*')
        if m == n
            fprintf(' (%d)\n', n)
        end 
    end
end

%% Problem 2: Flipping a Coin

% 2a
% Runs a trial to see how many times a coin needs to be flipped to see
% heads 30 times.

heads = 0;
count = 0;

while heads < 30
    result = randperm(2);
    if result(1) == 1
        heads = heads + 1;
    end
    count = count + 1;
end

fprintf('Number of coin flips needed to see heads 30 times: %d\n', count)

%% Problem 2b: Average Coin Flips
% Runs 2000 trials to see the average number of coins flips needed to see
% heads 30 times.

heads = 0;
count = 0;
totalCount = 0;

for trials = 1 : 1 : 2000
    while heads < 30
        result = randperm(2);
        if result(1) == 1
            heads = heads + 1;
        end
        count = count + 1;
    end
    totalCount = totalCount + count;
    heads = 0;
    count = 0;
end

avgCount = totalCount / 2000;

fprintf('Average number of coin flips needed to see heads 30 times: %g4\n', avgCount)

%% Problem 3: Card Trick

% a
% Flips all even-numbered cards down

card = ones(1,52);

for i = 2 : 2 : 52
    if card(i) == 1
        card(i) = 0;
    else
        card(i) = 1;
    end
end

fprintf('After flipping all even-numbered cards:\n')
disp(card)

% b
% Flips all cards, that are multiples of 3, down

for j = 3 : 3 : 52
    if card(j) == 1
        card(j) = 0;
    else
        card(j) = 1;
    end
end

fprintf('After flipping all cards that are multiples of 3:\n')
disp(card)

% d
% Displays face-up cards for 52 cards

faceup52 = find(flipCards(52));
fprintf('Face-up cards for 52 cards:\n')
disp(faceup52)

% e
% Displays face-up cards for 156 cards

faceup156 = find(flipCards(156));
fprintf('Face-up cards for 156 cards:\n')
disp(faceup156)
