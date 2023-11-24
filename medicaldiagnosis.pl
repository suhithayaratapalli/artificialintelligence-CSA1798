% Facts representing symptoms and diseases
symptom(john, fever).
symptom(john, cough).
symptom(jane, headache).
symptom(jane, nausea).

disease(fever, flu).
disease(cough, flu).
disease(headache, stress).
disease(nausea, food_poisoning).

% Rule to define a diagnosis
diagnosis(Person, Disease) :-
    symptom(Person, Symptom),
    disease(Symptom, Disease).

% Example queries
% What is John's diagnosis based on symptoms?
% ?- diagnosis(john, Disease).
%
% What is Jane's diagnosis based on symptoms?
% ?- diagnosis(jane, Disease).
