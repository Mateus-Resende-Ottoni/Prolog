% TO DO List
% _ Adicionar checagem com base em tipos de armas ao invés
% de nomes individuais, como Armas Simples e Armas a Distância
% _ Adicionar todos tipos de armas
% _ Adicionar checagem especial para armas com Finesse
% _ Alterar sistema de dano para diferenciar quantias diferentes
% de dados. Ex.: 2d6 != 1d12
% _ Adicionar feitiços

%%%%%%%%% Ficha de customização %%%%%%%%%%
% Gerais
character_name("Amon").
character_level(4).
character_class(bard).
character_race(drow).

% Atributos
base_attribute(strength,     8).
base_attribute(dexterity,    16).
base_attribute(constitution, 10).
base_attribute(intelligence, 12).
base_attribute(wisdom,       14).
base_attribute(charisma,     19).

% Habilidades e proficiências
base_skill(athletics,        not_proficient).
base_skill(acrobatics,       proficient).
base_skill(sleight_of_hand,  not_proficient).
base_skill(stealth,          proficient).
base_skill(arcana,           not_proficient).
base_skill(history,          proficient).
base_skill(investigation,    proficient).
base_skill(nature,           proficient).
base_skill(religion,         not_proficient).
base_skill(animal_handling,  not_proficient).
base_skill(insight,          proficient).
base_skill(medicine,         not_proficient).
base_skill(perception,       proficient).
base_skill(survival,         not_proficient).
base_skill(deception,        proficient).
base_skill(intimidation,     not_proficient).
base_skill(performance,      expert).
base_skill(persuasion,       expert).

% Testes de resistência
base_saving_throw(strength,     not_proficient).
base_saving_throw(dexterity,    proficient).
base_saving_throw(constitution, not_proficient).
base_saving_throw(intelligence, not_proficient).
base_saving_throw(wisdom,       not_proficient).
base_saving_throw(charisma,     proficient).

% Atributos derivados
armor_class_bonus(1).
initiative_bonus(0).

% Armas e Ataques
% Armas
% Formatação básica: (Nome, Tipo, Encantamento)
weapon(flauta_perfurante, dagger,   0).
weapon(rapieira,          rapier,   1).
weapon(arco_curto,        shortbow, 0).

% Feitiços

% Outros
% Linguagens
language(common).
language(elvish).
language(celestial).
% Proficiências em equipamentos
item_proficiency(light_armor).
item_proficiency(rapier).
item_proficiency(shortsword).
item_proficiency(hand_crossbow).
item_proficiency(simple_weapons).
item_proficiency(longbow).
item_proficiency(crossbow).
item_proficiency(unarmed).
% Proficiências em ferramentas
tool_proficiency(dice).
tool_proficiency(flute).
tool_proficiency(bagpipe).
tool_proficiency(lyre).

%%%%%%%%%% Fim da ficha %%%%%%%%%%

%%%%%%%%%% Setor de fatos genéricos %%%%%%%%%%
% Atributos base e habilidades
attribute(strength).
attribute(dexterity).
attribute(constitution).
attribute(intelligence).
attribute(wisdom).
attribute(charisma).

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

% Modificadores
% Atributo Base
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
% Valores levam em contam o HP padrão ganho por nível
class_hp(barbarian, 7).
class_hp(bard,      5).
class_hp(cleric,    5).
class_hp(druid,     5).
class_hp(fighter,   6).
class_hp(monk,      5).
class_hp(paladin,   6).
class_hp(ranger,    6).
class_hp(rogue,     5).
class_hp(sorcerer,  4).
class_hp(warlock,   5).
class_hp(wizard,    4).

% Ataques e armas
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

% Testes para feitiços
spellcasting_attribute(barbarian, charisma).
spellcasting_attribute(bard,      charisma).
spellcasting_attribute(cleric,    wisdom).
spellcasting_attribute(druid,     wisdom).
spellcasting_attribute(fighter,   intelligence).
spellcasting_attribute(monk,      wisdom).
spellcasting_attribute(paladin,   charisma).
spellcasting_attribute(ranger,    wisdom).
spellcasting_attribute(rogue,     intelligence).
spellcasting_attribute(sorcerer,  charisma).
spellcasting_attribute(warlock,   charisma).
spellcasting_attribute(wizard,    intelligence).
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


% Dados
roll_die(Number, Result) :-
  random_between(1, Number, Result).
d4(Result)  :-
  random_between(1,      4, Result).
d8(Result)  :-
  random_between(1,      8, Result).
d10(Result) :-
  random_between(1,     10, Result).
d12(Result) :-
  random_between(1,     12, Result).
d20(Result) :-
  random_between(1,     20, Result).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
