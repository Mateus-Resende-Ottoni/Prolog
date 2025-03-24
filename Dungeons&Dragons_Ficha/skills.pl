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
  character_skill(Skill, Proficiency),
  attribute_modifier(Attribute, Attribute_Modifier),
  proficiency_value(Proficiency, Proficiency_Bonus),
  Bonus is Attribute_Modifier + Proficiency_Bonus.

roll_skill(Skill) :-
  d20(Die1), d20(Die2),
  skill_bonus(Skill, Skill_bonus),
  Skill_roll1 is Die1 + Skill_bonus, Skill_roll2 is Die2 + Skill_bonus,
  write("Skill roll for "), write(Skill), writeln(": "),
  write(Skill_roll1), write("("), write(Die1), write(") / "),
  write(Skill_roll2), write("("), write(Die2), writeln(")").


% Testes de resistência
saving_throw_bonus(Attribute, Bonus) :-
  character_saving_throw(Attribute, Proficiency),
  attribute_modifier(Attribute, Attribute_Modifier),
  proficiency_value(Proficiency, Proficiency_Bonus),
  Bonus is Attribute_Modifier + Proficiency_Bonus.

roll_saving_throw(Attribute) :-
  d20(Die1), d20(Die2),
  saving_throw_bonus(Attribute, Saving_bonus),
  Saving_roll1 is Die1 + Saving_bonus,
  Saving_roll2 is Die2 + Saving_bonus,
  write("Saving throw roll for "), write(Attribute), writeln(": "),
  write(Saving_roll1), write("("), write(Die1), write(") / "),
  write(Saving_roll2), write("("), write(Die2), writeln(")").

