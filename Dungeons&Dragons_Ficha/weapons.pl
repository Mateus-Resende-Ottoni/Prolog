% Armas
% Dados sobre armas
% Base: weapon_stats(Nome, Numero_de_dados, Dado_de_dano, Tipo_de_dano,
% Atributo_de_uso)
weapon_stats(club,           1,  4, bludgeoning,  strength).
weapon_stats(dagger,         1,  4,    piercing, dexterity).
weapon_stats(greatclub,      1,  8, bludgeoning,  strength).
weapon_stats(handaxe,        1,  6,    slashing,  strength).
weapon_stats(javelin,        1,  6,    piercing,  strength).
weapon_stats(light_hammer,   1,  4, bludgeoning,  strength).
weapon_stats(mace,           1,  6, bludgeoning,  strength).
weapon_stats(quarterstaff,   1,  6, bludgeoning,  strength).
weapon_stats(sickle,         1,  4,    slashing,  strength).
weapon_stats(spear,          1,  6,    piercing,  strength).
weapon_stats(unarmed,        1,  1, bludgeoning,  strength).
weapon_stats(light_crossbow, 1,  8,    piercing, dexterity).
weapon_stats(dart,           1,  4,    piercing, dexterity).
weapon_stats(shortbow,       1,  6,    piercing, dexterity).
weapon_stats(sling,          1,  4, bludgeoning, dexterity).
weapon_stats(battleaxe,      1,  8,    slashing,  strength).
weapon_stats(flail,          1,  8, bludgeoning,  strength).
weapon_stats(glaive,         1, 10,    slashing,  strength).
weapon_stats(greataxe,       1, 12,    slashing,  strength).
weapon_stats(greatsword,     2,  6,    slashing,  strength).
weapon_stats(halberd,        1, 10,    slashing,  strength).
weapon_stats(lance,          1, 12,    piercing,  strength).
weapon_stats(longsword,      1,  8,    slashing,  strength).
weapon_stats(maul,           2,  6, bludgeoning,  strength).
weapon_stats(morningstar,    1,  8,    piercing,  strength).
weapon_stats(pike,           1, 10,    piercing,  strength).
weapon_stats(rapier,         1,  8,    piercing, dexterity).
weapon_stats(scimitar,       1,  6,    slashing, dexterity).
weapon_stats(shortsword,     1,  6,    piercing, dexterity).
weapon_stats(trident,        1,  6,    piercing, dexterity).
weapon_stats(war_pick,       1,  8,    piercing,  strength).
weapon_stats(warhammer,      1,  8, bludgeoning,  strength).
weapon_stats(whip,           1,  4,    slashing, dexterity).
weapon_stats(blowgun,        1,  1,    piercing, dexterity).
weapon_stats(hand_crossbow,  1,  6,    piercing, dexterity).
weapon_stats(heavy_crossbow, 1, 10,    piercing, dexterity).
weapon_stats(longbow,        1,  8,    piercing, dexterity).

% Confirmar proficiência com a arma
weapon_proficiency(Weapon_type, Proficiency_Bonus) :-
  character_item_proficiency(Weapon_type),
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Bonus), !.
weapon_proficiency(_, Proficiency_Bonus) :-
  Proficiency_Bonus is 0.

