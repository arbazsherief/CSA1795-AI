% Define symptoms
symptom(headache).
symptom(fever).
symptom(cough).
symptom(sore_throat).
symptom(runny_nose).
symptom(fatigue).

% Define diseases
disease(flu, [headache, fever, cough, sore_throat, fatigue]).
disease(common_cold, [headache, runny_nose, cough, fatigue]).

% Define the diagnosis predicate
diagnosis(Patient, Disease) :-
    symptoms(Patient, Symptoms),
    disease(Disease, SymptomList),
    subset(Symptoms, SymptomList).

% Define the symptoms predicate
symptoms(Patient, Symptoms) :-
    findall(X, (symptom(X), has_symptom(Patient, X)), Symptoms).

% Define the has_symptom predicate
has_symptom(Patient, Symptom) :-
    ask(Patient, Symptom, yes).

% Define the ask predicate
ask(Patient, Symptom, yes) :-
    format("Does ~a have ~a? (yes/no)", [Patient, Symptom]),
    read(Response),
    Response = yes.
ask(Patient, Symptom, _) :-
    format("Does ~a have ~a? (yes/no)", [Patient, Symptom]),
    read(Response),
    Response = no.

% Define the subset predicate
subset([], _).
subset([Head|Tail], List) :-
    member(Head, List),
    subset(Tail, List).