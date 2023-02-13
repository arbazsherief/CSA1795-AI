disease(diabetes).
disease(hypertension).
disease(obesity).
disease(heart_disease).

diet(diabetes, 'Low Carbohydrate, High Protein').
diet(hypertension, 'Low Sodium, High Potassium').
diet(obesity, 'Low Calorie, High Fiber').
diet(heart_disease, 'Low Fat, Low Cholesterol').

suggest_diet(Disease, Diet) :-
    disease(Disease),
    diet(Disease, Diet).
