% Facts representing initial information
symptom(john, fever).
symptom(john, cough).
symptom(jane, headache).
symptom(jane, nausea).

% Rules to infer diseases based on symptoms
has_disease(Person, Disease) :-
    symptom(Person, Symptom),
    disease(Symptom, Disease).

% Facts representing diseases and their associated symptoms
disease(fever, flu).
disease(cough, flu).
disease(headache, stress).
disease(nausea, food_poisoning).

% Forward chaining rule
forward_chaining(Person, Disease) :-
    has_disease(Person, Disease),
    write(Person), write(' is diagnosed with '), write(Disease), nl.

