% Define the facts
fact(a).
fact(b).
fact(c).

% Define the rules
rule(1, [], conclusion(a)).
rule(2, [conclusion(a)], conclusion(b)).
rule(3, [conclusion(b)], conclusion(c)).

% Define the backward chaining predicate
backward_chain(Conclusion) :-
    fact(Conclusion);
    rule(_, Premises, conclusion(Conclusion)),
    backward_chain_premises(Premises).

% Define the backward_chain_premises predicate
backward_chain_premises([]).
backward_chain_premises([Premise|Premises]) :-
    backward_chain(Premise),
    backward_chain_premises(Premises).

% Query 1: Can conclusion "c" be reached based on the current knowledge?
query_1 :-
    (backward_chain(c),
     format("Conclusion c can be reached."), !;
     format("Conclusion c cannot be reached.")).

% Query 2: What conclusions can be reached based on the current knowledge?
query_2 :-
    findall(Conclusion, backward_chain(Conclusion), Conclusions),
    format("The following conclusions can be reached: ~a.", [Conclusions]).