% TO DO List
% _ Adicionar checagem com base em tipos de armas ao invés
% de nomes individuais, como Armas Simples e Armas a Distância
% _ Adicionar checagem especial para armas com Finesse
% _ Adicionar feitiços restantes
% _ Adicionar formatação do texto de output para as ações
% _ Adicionar traits e características de classes e raças

% Importação
:- consult('attacks.pl').
:- consult('attributes.pl').
:- consult('classes.pl').
:- consult('dice.pl').
:- consult('races.pl').
:- consult('skills.pl').
:- consult('spells.pl').
:- consult('weapons.pl').

%%%%%%%%% Ficha de customização %%%%%%%%%%
% Gerais
character_name("Amon").
character_level(4).
character_class(bard).
character_race(elf).
character_subrace(drow).

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
