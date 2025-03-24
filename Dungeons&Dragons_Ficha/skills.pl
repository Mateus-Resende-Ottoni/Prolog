skill(strength,     athletics).
skill(dexterity,    acrobatics).
skill(dexterity,    sleight_of_hand).
skill(dexterity,    stealth).
skill(intelligence, arcana).
skill(intelligence, history).
skill(intelligence, investigation).
skill(intelligence, nature).
skill(intelligence, religion).
skill(wisdom,       animal_handling).
skill(wisdom,       insight).
skill(wisdom,       medicine).
skill(wisdom,       perception).
skill(wisdom,       survival).
skill(charisma,     deception).
skill(charisma,     intimidation).
skill(charisma,     performance).
skill(charisma,     persuasion).

% Proficiência
proficiency_modifier(Level, 2) :- Level >=  1, Level =<  4, !.
proficiency_modifier(Level, 3) :- Level >=  5, Level =<  8, !.
proficiency_modifier(Level, 4) :- Level >=  9, Level =< 12, !.
proficiency_modifier(Level, 5) :- Level >= 13, Level =< 16, !.
proficiency_modifier(Level, 6) :- Level >= 17.

proficiency_value(Proficiency, Proficiency_Total):-
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Bonus),
  proficiency_calc(Proficiency, Proficiency_Bonus, Proficiency_Total).

proficiency_calc(expert, Proficiency_Bonus, Proficiency_Total) :-
  Proficiency_Total is 2 * Proficiency_Bonus.
proficiency_calc(proficient, Proficiency_Bonus, Proficiency_Total) :-
  Proficiency_Total is 1 * Proficiency_Bonus.
proficiency_calc(not_proficient, Proficiency_Bonus, Proficiency_Total) :-
  Proficiency_Total is 0 * Proficiency_Bonus.

% Habilidades
skill_bonus(Skill, Bonus) :-
  skill(Attribute, Skill),
  base_skill(Skill, Proficiency),
  attribute_modifier(Attribute, Attribute_Modifier),
  proficiency_value(Proficiency, Proficiency_Bonus),
  Bonus is Attribute_Modifier + Proficiency_Bonus.

roll_skill(Skill, Skill_roll) :-
  d20(Die),
  skill_bonus(Skill, Skill_bonus),
  Skill_roll is Die + Skill_bonus.

% Testes de resistência
saving_throw_bonus(Attribute, Bonus) :-
  base_saving_throw(Attribute, Proficiency),
  attribute_modifier(Attribute, Attribute_Modifier),
  proficiency_value(Proficiency, Proficiency_Bonus),
  Bonus is Attribute_Modifier + Proficiency_Bonus.

roll_saving_throw(Attribute, Saving_roll) :-
  d20(Die),
  saving_throw_bonus(Attribute, Saving_bonus),
  Saving_roll is Die + Saving_bonus.
