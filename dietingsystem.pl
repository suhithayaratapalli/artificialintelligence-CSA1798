% Facts representing diseases and dietary suggestions
diet_suggestion(heart_disease, avoid(saturated_fats), eat(fruits), eat(vegetables), limit(sodium)).
diet_suggestion(diabetes, limit(sugar), eat(whole_grains), eat(lean_proteins), control(carbohydrates)).
diet_suggestion(hypertension, limit(sodium), eat(potassium-rich_foods), maintain(healthy_weight)).

% Rules to suggest a diet based on a specific disease
suggest_diet(Person, Disease, Suggestions) :-
    diet_suggestion(Disease, Suggestions),
    format('For ~w with ~w: ~w~n', [Person, Disease, Suggestions]).

% Example queries
% Suggest a diet for John with heart disease
% ?- suggest_diet(john, heart_disease, Suggestions).
%
% Suggest a diet for Mary with diabetes
% ?- suggest_diet(mary, diabetes, Suggestions).
