% Armas
% Dados sobre armas
% Base: weapon_stats(Nome, Dado_de_dano, Numero_de_dados, Tipo_de_dano,
% Atributo_de_uso)
weapon_stats(club,            4, 1, bludgeoning,  strength).
weapon_stats(dagger,          4, 1,    piercing, dexterity).
weapon_stats(greatclub,       8, 1, bludgeoning,  strength).
weapon_stats(handaxe,         6, 1,    slashing,  strength).
weapon_stats(javelin,         6, 1,    piercing,  strength).
weapon_stats(light_hammer,    4, 1, bludgeoning,  strength).
weapon_stats(mace,            6, 1, bludgeoning,  strength).
weapon_stats(quarterstaff,    6, 1, bludgeoning,  strength).
weapon_stats(sickle,          4, 1,    slashing,  strength).
weapon_stats(spear,           6, 1,    piercing,  strength).
weapon_stats(unarmed,         1, 1, bludgeoning,  strength).
weapon_stats(light_crossbow,  8, 1,    piercing, dexterity).
weapon_stats(dart,            4, 1,    piercing, dexterity).
weapon_stats(shortbow,        6, 1,    piercing, dexterity).
weapon_stats(sling,           4, 1, bludgeoning, dexterity).
weapon_stats(battleaxe,       8, 1,    slashing,  strength).
weapon_stats(flail,           8, 1, bludgeoning,  strength).
weapon_stats(glaive,         10, 1,    slashing,  strength).
weapon_stats(greataxe,       12, 1,    slashing,  strength).
weapon_stats(greatsword,      6, 2,    slashing,  strength).
weapon_stats(halberd,        10, 1,    slashing,  strength).
weapon_stats(lance,          12, 1,    piercing,  strength).
weapon_stats(longsword,       8, 1,    slashing,  strength).
weapon_stats(maul,            6, 2, bludgeoning,  strength).
weapon_stats(morningstar,     8, 1,    piercing,  strength).
weapon_stats(pike,           10, 1,    piercing,  strength).
weapon_stats(rapier,          8, 1,    piercing, dexterity).
weapon_stats(scimitar,        6, 1,    slashing, dexterity).
weapon_stats(shortsword,      6, 1,    piercing, dexterity).
weapon_stats(trident,         6, 1,    piercing, dexterity).
weapon_stats(war_pick,        8, 1,    piercing,  strength).
weapon_stats(warhammer,       8, 1, bludgeoning,  strength).
weapon_stats(whip,            4, 1,    slashing, dexterity).
weapon_stats(blowgun,         1, 1,    piercing, dexterity).
weapon_stats(hand_crossbow,   6, 1,    piercing, dexterity).
weapon_stats(heavy_crossbow, 10, 1,    piercing, dexterity).
weapon_stats(longbow,         8, 1,    piercing, dexterity).

% Confirmar proficiência com a arma
weapon_proficiency(Weapon_type, Proficiency_Bonus) :-
  item_proficiency(Weapon_type) , !,
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Bonus) .
weapon_proficiency(_, Proficiency_Bonus) :-
  Proficiency_Bonus is 0.

