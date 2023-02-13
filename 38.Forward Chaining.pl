% Define the rules
rule(1, [], conclusion(a)).
rule(2, [conclusion(a)], conclusion(b)).
rule(3, [conclusion(b)], conclusion(c)).

% Define the forward chaining predicate
forward_chain(Conclusion) :-
    rule(_, Premises, conclusion(Conclusion)),
    premises_true(Premises).

% Define the premises_true predicate
premises_true([]).
premises_true([Premise|Premises]) :-
    conclusion(Premise),
    premises_true(Premises).

% Define the conclusion predicate
conclusion(a).
conclusion(b).

% Query 1: What conclusions can be reached based on the current knowledge?
query_1 :-
    conclusion(Conclusion),
    format("~a can be concluded.", [Conclusion]).

% Query 2: Can conclusion "c" be reached based on the current knowledge?
query_2 :-
    (forward_chain(c),
     format("Conclusion c can be reached."), !;
     format("Conclusion c cannot be reached.")).