% Resumo dos atributos
character_sinopsis(attributes) :-
  character_name(Name),
  character_level(Level), character_class(Class),
  character_attribute(strength, STR),
  attribute_modifier_calc(STR, STR_MOD),
  character_attribute(dexterity, DEX),
  attribute_modifier_calc(DEX, DEX_MOD),
  character_attribute(constitution, CON),
  attribute_modifier_calc(CON, CON_MOD),
  character_attribute(intelligence, INT),
  attribute_modifier_calc(INT, INT_MOD),
  character_attribute(wisdom, WIS),
  attribute_modifier_calc(WIS, WIS_MOD),
  character_attribute(charisma, CHA),
  attribute_modifier_calc(CHA, CHA_MOD),
  armor_class(AC), hit_points(HP), initiative(Init),
  writeln(Name),
  write("STR: "), write(STR),
                  write("("), write(STR_MOD), write(")"),
  write("   Level "), write(Level), write(" "), writeln(Class),
  write("DEX: "), write(DEX),
                  write("("), write(DEX_MOD), writeln(")"),
  write("CON: "), write(CON),
                  write("("), write(CON_MOD), write(")"),
  write("   HP:   "), writeln(HP),
  write("INT: "), write(INT),
                  write("("), write(INT_MOD), write(")"),
  write("   AC:   "), writeln(AC),
  write("WIS: "), write(WIS),
                  write("("), write(WIS_MOD), write(")"),
  write("   Init:  "), writeln(Init),
  write("CHA: "), write(CHA),
                  write("("), write(CHA_MOD), writeln(")").

% Resumo das armas
character_sinopsis(weapons) :-
  weapon(Weapon_Name, Type, Enchant),
  write(Weapon_Name),
  write(": +"), write(Enchant),
  write(" "), writeln(Type).


% Resumo de habilidades
character_sinopsis(skills) :-
  attribute(Attribute),
  character_sinopsis_skills(Attribute),
  writeln("").

character_sinopsis_skills(Attribute) :-
  % Melhorar isso aqui
  skill(Attribute, Skill),
  character_skill(Skill, Proficiency),
  skill_bonus(Skill, Bonus),
  write(Skill),
  write(" ("), write(Bonus), write(") ["),
  write(Proficiency), writeln("]").
