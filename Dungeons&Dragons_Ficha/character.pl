% TO DO List
% _ Atualizar comando de ataque
% _ Inserir comando de feitiços e cantrips
% _ Adicionar checagem com base em tipos de armas ao invés
% de nomes individuais, como Armas Simples e Armas a Distância
% _ Adicionar checagem especial para armas com Finesse
% _ Adicionar feitiços e cantrips
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
