bird(eagle).
bird(pigeon).
bird(ostrich).

can_fly(eagle).
can_fly(pigeon).

can_not_fly(ostrich).

is_able_to_fly(Bird) :-
    can_fly(Bird).

is_not_able_to_fly(Bird) :-
    can_not_fly(Bird).
