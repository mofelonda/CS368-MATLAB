function card = flipCards(N)
% Flips N cards by multiples of 2,...,N
% Returns array of cards

card = ones(1,N);

for i = 2 : N
    for j = i : i : N
        if card(j) == 1
            card(j) = 0;
        else
            card(j) = 1;
        end
    end
end
end