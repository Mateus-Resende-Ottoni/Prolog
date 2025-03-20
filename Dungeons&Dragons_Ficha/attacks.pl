% Testes de ataque
weapon_attack(Weapon_name, [Attack_result1, Attack_result2], [Damage_result1, Damage_result2]) :-
  weapon(Weapon_name, Weapon_type, Enchantment),
  weapon_stats(Weapon_type, Damage_die, Attribute),
  attribute_modifier(Attribute, Attribute_Mod),
  weapon_proficiency(Weapon_type, Proficiency_bonus),
  d20(Attack1),
  d20(Attack2),
  roll_die(Damage_die, Damage1),
  roll_die(Damage_die, Damage2),
  Damage_result1 is Damage1 + Attribute_Mod + Enchantment,
  Damage_result2 is Damage2 + Attribute_Mod + Enchantment,
  Attack_result1 is Attack1 + Attribute_Mod + Proficiency_bonus + Enchantment,
  Attack_result2 is Attack2 + Attribute_Mod + Proficiency_bonus + Enchantment.
