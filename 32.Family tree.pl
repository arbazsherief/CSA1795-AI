female(pam).
female(liz).
female(ann).
female(pat).

male(tom).
male(bob).
male(jim).

parent(pam, liz).
parent(pam, ann).
parent(tom, liz).
parent(tom, ann).
parent(liz, pat).
parent(bob, pat).

mother(Mother, Child) :-
    female(Mother),
    parent(Mother, Child).

father(Father, Child) :-
    male(Father),
    parent(Father, Child).

grandfather(Grandfather, Grandchild) :-
    male(Grandfather),
    parent(Grandfather, Parent),
    parent(Parent, Grandchild).

grandmother(Grandmother, Grandchild) :-
    female(Grandmother),
    parent(Grandmother, Parent),
    parent(Parent, Grandchild).

sister(Sister, Person) :-
    female(Sister),
    parent(Parent, Sister),
    parent(Parent, Person),
    Sister \= Person.

brother(Brother, Person) :-
    male(Brother),
    parent(Parent, Brother),
    parent(Parent, Person),
    Brother \= Person.
