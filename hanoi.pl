% Hanoi predicate
hanoi(1, Source, Target, _, Moves) :-
    % Base case: Move the disk from Source to Target
    append([move(disk, Source, Target)], Moves).

hanoi(N, Source, Target, Auxiliary, Moves) :-
    % Recursive case:
    % Move N-1 disks from Source to Auxiliary using Target as the auxiliary peg
    hanoi(N-1, Source, Auxiliary, Target, Move1),
    % Move the Nth disk from Source to Target
    append(Move1, [move(disk, Source, Target)], Move2),
    % Move the N-1 disks from Auxiliary to Target using Source as the auxiliary peg
    hanoi(N-1, Auxiliary, Target, Source, Move3),
    % Concatenate the moves
    append(Move2, Move3, Moves).

% Helper predicate to print the moves
print_moves([]).
print_moves([move(Item, From, To) | Rest]) :-
    format('Move ~w from ~w to ~w~n', [Item, From, To]),
    print_moves(Rest).
