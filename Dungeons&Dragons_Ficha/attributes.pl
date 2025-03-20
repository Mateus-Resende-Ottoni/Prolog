% Atributos base e habilidades
attribute(strength).
attribute(dexterity).
attribute(constitution).
attribute(intelligence).
attribute(wisdom).
attribute(charisma).

% Modificadores
attribute_modifier(Attribute, Modifier) :-
  base_attribute(Attribute, Score),
  attribute_modifier_calc(Score, Modifier).

attribute_modifier_calc(Score, -5) :- Score >=  0, Score =<  1, !.
attribute_modifier_calc(Score, -4) :- Score >=  2, Score =<  3, !.
attribute_modifier_calc(Score, -3) :- Score >=  4, Score =<  5, !.
attribute_modifier_calc(Score, -2) :- Score >=  6, Score =<  7, !.
attribute_modifier_calc(Score, -1) :- Score >=  8, Score =<  9, !.
attribute_modifier_calc(Score,  0) :- Score >= 10, Score =< 11, !.
attribute_modifier_calc(Score,  1) :- Score >= 12, Score =< 13, !.
attribute_modifier_calc(Score,  2) :- Score >= 14, Score =< 15, !.
attribute_modifier_calc(Score,  3) :- Score >= 16, Score =< 17, !.
attribute_modifier_calc(Score,  4) :- Score >= 18, Score =< 19, !.
attribute_modifier_calc(Score,  5) :- Score >= 20.

% Atributos derivados
% Classe de armadura
armor_class(Armor_total) :-
  attribute_modifier(dexterity, Dexterity_Modifier),
  armor_class_bonus(Armor_bonus),
  Armor_total is 10 + Armor_bonus + Dexterity_Modifier.
% Iniciativa
initiative(Initiative_total) :-
  attribute_modifier(dexterity, Dexterity_Modifier),
  initiative_bonus(Initiative_bonus),
  Initiative_total is Initiative_bonus + Dexterity_Modifier.
roll_initiative(Initiative_roll) :-
  d20(Die),
  initiative(Initiative_bonus),
  Initiative_roll is Die + Initiative_bonus.
% Pontos de vida
hit_points(HP_total) :-
  character_level(Level),
  character_class(Class),
  class_hp(Class, Class_HP),
  attribute_modifier(constitution, Mod),
  HP_total is (Level * (Class_HP + Mod)) + Class_HP.
