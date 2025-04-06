% Planos para o futuro
% _ Adicionar checagem com base em tipos de armas ao invés
% de nomes individuais, como Armas Simples e Armas a Distância
% _ Adicionar checagem especial para armas com Finesse
% _ Adicionar feitiços restantes
% _ Adicionar traits e características de classes e raças

% Importação
:- consult('attacks.pl').
:- consult('attributes.pl').
:- consult('classes.pl').
:- consult('dice.pl').
:- consult('races.pl').
:- consult('sinopsis.pl').
:- consult('skills.pl').
:- consult('spells.pl').
:- consult('weapons.pl').

%%%%%%%%% Ficha de customização %%%%%%%%%%
% Gerais
character_name("Amon").
character_level(4).
character_class(bard).
character_subclass(college_of_lore).
character_race(elf).
character_subrace(drow).
character_alignment(neutral).

% Atributos
character_attribute(strength,     8).
character_attribute(dexterity,    16).
character_attribute(constitution, 10).
character_attribute(intelligence, 12).
character_attribute(wisdom,       14).
character_attribute(charisma,     19).

% Habilidades e proficiências
character_skill(athletics,        not_proficient).
character_skill(acrobatics,       proficient).
character_skill(sleight_of_hand,  not_proficient).
character_skill(stealth,          proficient).
character_skill(arcana,           not_proficient).
character_skill(history,          proficient).
character_skill(investigation,    proficient).
character_skill(nature,           proficient).
character_skill(religion,         not_proficient).
character_skill(animal_handling,  not_proficient).
character_skill(insight,          proficient).
character_skill(medicine,         not_proficient).
character_skill(perception,       proficient).
character_skill(survival,         not_proficient).
character_skill(deception,        proficient).
character_skill(intimidation,     not_proficient).
character_skill(performance,      expert).
character_skill(persuasion,       expert).

% Testes de resistência
character_saving_throw(strength,     not_proficient).
character_saving_throw(dexterity,    proficient).
character_saving_throw(constitution, not_proficient).
character_saving_throw(intelligence, not_proficient).
character_saving_throw(wisdom,       not_proficient).
character_saving_throw(charisma,     proficient).

% Atributos derivados
armor_class_bonus(1).
initiative_bonus(0).

% Armas
% Formatação básica: (Nome, Tipo, Encantamento)
weapon(flauta_perfurante, dagger,   0).
weapon(rapieira,          rapier,   1).
weapon(arco_curto,        shortbow, 0).

% Feitiços
character_cantrip(dancing_lights).
character_cantrip(mending).
character_cantrip(minor_illusion).
character_cantrip(prestidigitation).
character_cantrip(vicious_mockery).

character_spell(charm_person).
character_spell(comprehend_languages).
character_spell(cure_wounds).
character_spell(disguise_slf).
character_spell(dissonant_whispers).
character_spell(enhance_ability).
character_spell(silent_image).
character_spell(suggestion).
character_spell(unseen_servant).


% Características e habilidades
character_trait(trance,               racial).
character_trait(night_vision,         racial).
character_trait(sunlight_sensibility, racial).
character_trait(jack_of_all_trades,   class).
character_trait(song_of_rest,         class).
character_trait(born_persuasive,      other).

% Outros
% Linguagens
character_language(common).
character_language(elvish).
character_language(celestial).
% Proficiências em equipamentos
character_item_proficiency(light_armor).
character_item_proficiency(rapier).
character_item_proficiency(shortsword).
character_item_proficiency(hand_crossbow).
character_item_proficiency(simple_weapons).
character_item_proficiency(longbow).
character_item_proficiency(crossbow).
character_item_proficiency(unarmed).
% Proficiências em ferramentas
character_tool_proficiency(dice).
character_tool_proficiency(flute).
character_tool_proficiency(bagpipe).
character_tool_proficiency(lyre).

% Aparência e outros
character_age(21).
character_height(1,85).
character_weight(70).
character_eye_color(light_red).
character_skin(blue_dark_toned).
character_hair(yellow, red, purple).

%%%%%%%%%% Fim da ficha %%%%%%%%%%
