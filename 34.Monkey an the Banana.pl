location(monkey, room).
location(banana, shelf).
location(box, room).

at(Object, Place) :-
    location(Object, Place).

can_reach(monkey, Object) :-
    at(Object, room).

can_reach(monkey, Object) :-
    at(box, room),
    at(Object, shelf).

move(monkey, Object) :-
    can_reach(monkey, Object),
    retract(location(Object, _)),
    asserta(location(Object, room)).
