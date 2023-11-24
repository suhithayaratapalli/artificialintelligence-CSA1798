% Facts
male(john).
male(bob).
male(jack).
male(jim).

female(mary).
female(susan).
female(linda).
female(anne).

% Parent relationships
parent(john, bob).
parent(john, jack).
parent(mary, bob).
parent(mary, jack).

parent(bob, jim).
parent(linda, jim).

parent(jack, susan).
parent(anne, susan).

% Rules for defining other relationships
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

% Grandparent relationship
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% Sibling relationship
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Aunt/Uncle relationship
% Facts
male(john).
male(bob).
male(jack).
male(jim).

female(mary).
female(susan).
female(linda).
female(anne).

% Parent relationships
parent(john, bob).
parent(john, jack).
parent(mary, bob).
parent(mary, jack).

parent(bob, jim).
parent(linda, jim).

parent(jack, susan).
parent(anne, susan).

% Rules for defining other relationships
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

% Grandparent relationship
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

% Sibling relationship
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Aunt/Uncle relationship
aunt(X, Y) :- sister(X, Z), parent(Z, Y).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).
