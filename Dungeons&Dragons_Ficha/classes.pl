class(barbarian).
class(bard).
class(cleric).
class(druid).
class(fighter).
class(monk).
class(paladin).
class(ranger).
class(rogue).
class(sorcerer).
class(warlock).
class(wizard).


subclass(barbarian, path_of_the_berserker).
subclass(barbarian, path_of_the_totem_warrior).
subclass(bard,      college_of_lore).
subclass(bard,      college_of_valor).
subclass(cleric,    knowledge_domain).
subclass(cleric,    life_domain).
subclass(cleric,    light_domain).
subclass(cleric,    nature_domain).
subclass(cleric,    tempest_domain).
subclass(cleric,    war_domain).
subclass(druid,     circle_of_the_land).
subclass(druid,     circle_of_the_moon).
subclass(fighter,   champion).
subclass(fighter,   battle_master).
subclass(fighter,   eldritch_knight).
subclass(monk,      way_of_the_open_hand).
subclass(monk,      way_of_shadow).
subclass(monk,      way_of_the_four_elements).
subclass(paladin,   oath_of_devotion).
subclass(paladin,   oath_of_the_ancients).
subclass(paladin,   oath_of_vengeance).
subclass(ranger,    hunter).
subclass(ranger,    beast_master).
subclass(rogue,     thief).
subclass(rogue,     assassin).
subclass(rogue,     arcane_trickster).
subclass(sorcerer,  draconic_bloodline).
subclass(sorcerer,  wild_magic).
subclass(warlock,   the_archfey).
subclass(warlock,   the_fiend).
subclass(warlock,   the_great_old_one).
subclass(wizard,    school_of_abjuration).
subclass(wizard,    school_of_divination).
subclass(wizard,    school_of_enchantment).
subclass(wizard,    school_of_evocation).
subclass(wizard,    school_of_illusion).
subclass(wizard,    school_of_necromancy).
subclass(wizard,    school_of_transmutation).


% HP por nível
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






