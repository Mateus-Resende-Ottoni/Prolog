% Testes de ataque
weapon_attack(Weapon_name) :-
  weapon(Weapon_name, Weapon_type, Enchantment),
  weapon_stats(Weapon_type, Dice_numbers, Damage_die, Damage_Type, Attribute),
  attribute_modifier(Attribute, Attribute_Mod),
  weapon_proficiency(Weapon_type, Proficiency_bonus),
  d20(Attack),
  d20(AttackMOD),
  roll_dice(Dice_numbers, Damage_die, Damage),
  roll_dice(Dice_numbers, Damage_die, DamageCRIT),
  Damage_result     is Damage     + Attribute_Mod + Enchantment,
  Damage_resultCRIT is DamageCRIT + Enchantment, % Crítico usa apenas o dano da arma
  Attack_result    is Attack    + Attribute_Mod + Proficiency_bonus + Enchantment,
  Attack_resultMOD is AttackMOD + Attribute_Mod + Proficiency_bonus + Enchantment,
  write("Attack result for "), writeln(Weapon_name),
  write("Hit:    "),
  write(Attack_result),    write("("), write(Attack),    write(") / "),
  write(Attack_resultMOD), write("("), write(AttackMOD), writeln(")"),
  write("Damage: "),
  write(Damage_result), write(" / "), write(Damage_resultCRIT),
  write(" "), writeln(Damage_Type).

% Roll types: save_dc, spell_roll, guaranteed
cantrip_attack(Cantrip_name) :-
  cantrip_stats(Cantrip_name, Dice_numbers, Damage_die, Damage_Type, Roll_type),
  character_cantrip(Cantrip_name),
  character_level(Level),
  cantrip_level(Level, Cantrip_Level),
  Total_dice_numbers = Dice_numbers + Cantrip_Level - 1,
  roll_dice(Total_dice_numbers, Damage_die, Damage),
  cantrip_result(Cantrip_name, Damage, Damage_Type, Roll_type).

cantrip_result(Cantrip_name, Damage, Damage_Type, guaranteed) :-
  write("Damage result for "), writeln(Cantrip_name),
  write("Damage: "), write(Damage), write(" "), writeln(Damage_Type).

cantrip_result(Cantrip_name, Damage, Damage_Type, save_dc) :-
  spellDC_value(DC_value),
  % Algo para checar o atributo do teste de resistência
  write("Damage result for "), write(Cantrip_name),
  write(" _ Difficulty "), writeln(DC_value),
  write("Damage: "), write(Damage), write(" "), writeln(Damage_Type).

cantrip_result(Cantrip_name, Damage, Damage_Type, spell_roll) :-
  d20(Attack),
  d20(AttackMOD),
  cantrip_stats(Cantrip_name, Dice_numbers, Damage_die, _, _),
  character_level(Level),
  cantrip_level(Level, Cantrip_Level),
  Total_dice_numbers = Dice_numbers + Cantrip_Level - 1,
  roll_dice(Total_dice_numbers, Damage_die, DamageCRIT),
  spellcasting_bonus(Spellcasting_bonus),
  Attack_result    is Attack    + Spellcasting_bonus,
  Attack_resultMOD is AttackMOD + Spellcasting_bonus,
  write("Attack result for "), writeln(Cantrip_name),
  write("Hit:    "),
  write(Attack_result),    write("("), write(Attack),    write(") / "),
  write(Attack_resultMOD), write("("), write(AttackMOD), writeln(")"),
  write("Damage: "),
  write(Damage), write(" / "), write(DamageCRIT),
  write(" "), writeln(Damage_Type).

spell_attack(Spell_name, Slot_Level) :-
  spell_stats(Spell_name, Dice_numbers, Damage_die, Spell_Level, Damage_Type, Roll_type),
  character_spell(Spell_name),
  Slot_Level >= Spell_Level,
  Total_dice_numbers = Dice_numbers + (Slot_Level - Spell_Level),
  roll_dice(Total_dice_numbers, Damage_die, Damage),
  spell_result(Spell_name, Damage, Damage_Type, Slot_Level, Roll_type).

spell_result(Spell_name, Damage, Damage_Type, Slot_Level, guaranteed) :-
  write("Damage result for "), write(Spell_name),
  write(" level "), writeln(Slot_Level),
  write("Damage: "), write(Damage), write(" "), writeln(Damage_Type).

spell_result(Spell_name, Damage, Damage_Type, Slot_Level, save_dc) :-
  spellDC_value(DC_value),
  % Algo para checar o atributo do teste de resistência
  write("Damage result for "), write(Spell_name),
  write(" level "), write(Slot_Level),
  write(" _ Difficulty "), writeln(DC_value),
  write("Damage: "), write(Damage), write(" "), writeln(Damage_Type).

spell_result(Spell_name, Damage, Damage_Type, Slot_Level, spell_roll) :-
  d20(Attack),
  d20(AttackMOD),
  spell_stats(Spell_name, Dice_numbers, Damage_die, Spell_Level, _, _),
  Slot_Level >= Spell_Level,
  Total_dice_numbers = Dice_numbers + (Slot_Level - Spell_Level),
  roll_dice(Total_dice_numbers, Damage_die, DamageCRIT),
  spellcasting_bonus(Spellcasting_bonus),
  Attack_result    is Attack    + Spellcasting_bonus,
  Attack_resultMOD is AttackMOD + Spellcasting_bonus,
  write("Attack result for "), write(Spell_name),
  write(" level "), writeln(Slot_Level),
  write("Hit:    "),
  write(Attack_result),    write("("), write(Attack),    write(") / "),
  write(Attack_resultMOD), write("("), write(AttackMOD), writeln(")"),
  write("Damage: "),
  write(Damage), write(" / "), write(DamageCRIT),
  write(" "), writeln(Damage_Type).
