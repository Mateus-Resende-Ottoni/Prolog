
% Bônus de acerto
spellcasting_bonus(Spellcasting_bonus) :-
  character_class(Class),
  spellcasting_attribute(Class, Attribute),
  attribute_modifier(Attribute, Attribute_Mod),
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Mod),
  Spellcasting_bonus is Attribute_Mod + Proficiency_Mod.
% Classe de Dificuldade
dificulty_class(DC_value) :-
  spellcasting_bonus(Spellcasting_bonus),
  DC_value is 8 + Spellcasting_bonus.
