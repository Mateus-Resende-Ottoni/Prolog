% Armas
% Dados sobre armas
weapon_stats(club,            4,  strength).
weapon_stats(dagger,          4, dexterity).
weapon_stats(greatclub,       8,  strength).
weapon_stats(handaxe,         6,  strength).
weapon_stats(javelin,         6,  strength).
weapon_stats(light_hammer,    4,  strength).
weapon_stats(mace,            6,  strength).
weapon_stats(quarterstaff,    6,  strength).
weapon_stats(sickle,          4,  strength).
weapon_stats(spear,           6,  strength).
weapon_stats(unarmed,         1,  strength).
weapon_stats(light_crossbow,  8, dexterity).
weapon_stats(dart,            4, dexterity).
weapon_stats(shortbow,        6, dexterity).
weapon_stats(sling,           4, dexterity).
weapon_stats(battleaxe,       8,  strength).
weapon_stats(flail,           8,  strength).
weapon_stats(glaive,         10,  strength).
weapon_stats(greataxe,       12,  strength).
weapon_stats(greatsword,     12,  strength).
weapon_stats(halberd,        10,  strength).
weapon_stats(lance,          12,  strength).
weapon_stats(longsword,       8,  strength).
weapon_stats(maul,           12,  strength).
weapon_stats(morningstar,     8,  strength).
weapon_stats(pike,           10,  strength).
weapon_stats(rapier,          8, dexterity).
weapon_stats(scimitar,        6, dexterity).
weapon_stats(shortsword,      6, dexterity).
weapon_stats(trident,         6, dexterity).
weapon_stats(war_pick,        8,  strength).
weapon_stats(warhammer,       8,  strength).
weapon_stats(whip,            4, dexterity).
weapon_stats(blowgun,         1, dexterity).
weapon_stats(hand_crossbow,   6, dexterity).
weapon_stats(heavy_crossbow, 10, dexterity).
weapon_stats(longbow,         8, dexterity).

% Confirmar proficiência com a arma
weapon_proficiency(Weapon_type, Proficiency_Bonus) :-
  item_proficiency(Weapon_type) , !,
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Bonus) .
weapon_proficiency(_, Proficiency_Bonus) :-
  Proficiency_Bonus is 0.

