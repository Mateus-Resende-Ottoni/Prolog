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






