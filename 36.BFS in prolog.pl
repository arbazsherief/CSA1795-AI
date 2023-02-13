% Define the state representation
% state(StateName, Cost, HeuristicValue)
state(a, 1, 10).
state(b, 2, 5).
state(c, 5, 8).
state(d, 6, 4).
state(e, 8, 3).

% Define the transitions between states
% transition(CurrentState, NextState, Cost)
transition(a, b, 2).
transition(a, c, 4).
transition(b, d, 1).
transition(c, d, 2).
transition(c, e, 3).
transition(d, e, 2).

% Define the goal state
goal_state(e).

% Best First Search Algorithm
best_first_search(Start, Path, Cost) :-
    findall(X, state(X, _, _), StateList),
    best_first_search_helper([], [Start], StateList, [Start], Path, Cost).

best_first_search_helper(Visited, [Current | _], _, Path, Path, CurrentCost) :-
    goal_state(Current),
    state(Current, CurrentCost, _).

best_first_search_helper(Visited, [Current | Rest], StateList, PathSoFar, Path, Cost) :-
    findall(X, (transition(Current, X, T), \+ member(X, Visited)), NewStates),
    append(Rest, NewStates, NewFrontier),
    sort(NewFrontier, SortedNewFrontier),
    add_heuristics(SortedNewFrontier, Heuristics),
    sort(Heuristics, SortedHeuristics),
    subtract(StateList, Visited, RemainingStates),
    intersection(SortedHeuristics, RemainingStates, NextStates),
    append(Visited, [Current], NewVisited),
    best_first_search_helper(NewVisited, NextStates, StateList, [Current | PathSoFar], Path, Cost).

% Add heuristics to states
add_heuristics([], []).
add_heuristics([State | States], [StateWithHeuristic | StatesWithHeuristics]) :-
    state(State, _, H),
    StateWithHeuristic = state(State, H),
    add_heuristics(States, StatesWithHeuristics).

% Sorting function to sort states based on their heuristics
sort_states(A, B, Order) :-
    state(A, _, H1),
    state(B, _, H2),
    compare(Order, H1, H2).

% List manipulation predicates
subtract([], _, []).
subtract([A | As], Bs, Cs) :-
    member(A, Bs), !,
    subtract(As, Bs, Cs).
subtract([A | As], Bs, [A | Cs]) :-
    subtract(As, Bs, Cs).

intersection([], _, []).
intersection([A | As], Bs, [A | Cs]) :-
    member(A, Bs), !