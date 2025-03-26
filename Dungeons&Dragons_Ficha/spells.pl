
% Lista de feitiços (os quais necessitem de algum dado)
% Base: spell_stats(Nome, Numero_de_dados, Dado_de_dano, Nivel,
% Tipo_de_dano, Tipo_de_acerto)
cantrip_stats(acid_splash,     1,  6, acid,      save_dc).
cantrip_stats(chill_touch,     1,  8, necrotic,  spell_roll).
cantrip_stats(eldritch_blast,  1, 10, force,     spell_roll).
cantrip_stats(fire_bolt,       1, 10, fire,      spell_roll).
cantrip_stats(poison_spray,    1, 12, poison,    save_dc).
cantrip_stats(produce_flame,   1,  8, fire,      spell_roll).
cantrip_stats(ray_of_frost,    1,  8, cold,      spell_roll).
cantrip_stats(sacred_flame,    1,  8, radiant,   save_dc).
cantrip_stats(shocking_grasp,  1,  8, lightning, spell_roll).
cantrip_stats(thorn_whip,      1,  6, piercing,  spell_roll).
cantrip_stats(vicious_mockery, 1,  4, psychic,   save_dc).


spell_stats(arms_of_hadar,           2,  6, 1, necrotic, save_dc).
spell_stats(aura_of_vitality,        2,  6, 3, healing, guaranteed).
spell_stats(banishing_smite,         5, 10, 5, force, guaranteed).
spell_stats(bestow_curse,            1,  8, 3, necrotic, guaranteed).
spell_stats(bigbys_hand,             4,  8, 5, force, spell_roll).
% Bigby's Hand damage when grappling.
% Has bonus of Spellcasting ability_modifier
% spell_stats(bigbys_hand, 2, 6, 5, bludgeoning, guaranteed).
spell_stats(blade_barrier,           6, 10, 6, slashing, save_dc).
spell_stats(blight,                  8,  8, 4, necrotic, save_dc).
spell_stats(blinding_smite,          3,  8, 3, radiant, guaranteed).
spell_stats(branding_smite,          2,  6, 2, radiant, guaranteed).
spell_stats(burning_hands,           3,  6, 1, fire, save_dc).
spell_stats(call_lightning,          3, 10, 3, lightning, save_dc).
spell_stats(chain_lightning,        10,  8, 6, lightning, save_dc).
spell_stats(chromatic_orb,           3,  8, 1, [acid, cold, fire, lightning, poison, thunder], spell_roll).
spell_stats(circle_of_death,         8,  6, 6, necrotic, save_dc).
spell_stats(cloud_of_daggers,        4,  4, 2, slashing, guaranteed).
spell_stats(cloudkill,               5,  8, 5, poison, save_dc).
spell_stats(cone_of_cold,            8,  8, 5, cold, save_dc).
spell_stats(conjure_barrage,         3,  8, 3, [bludgeoning, piercing, slashing], save_dc).
spell_stats(cordon_of_arrows,        1,  6, 2, piercing, save_dc).
spell_stats(crusaders_mantle,        1,  4, 3, radiant, guaranteed).
% Cure wounds soma o bônus do atributo de spellcasting
spell_stats(cure_wounds,             1,  8, 1, healing, guaranteed).
spell_stats(delayed_blast_fireball, 12,  6, 7, fire, save_dc).
% O dano de Destructive Wave é separado em 5d6 thunder e 5d6 radiant ou necrotic
spell_stats(destructive_wave,       10,  6, 5, [thunder, radiant, necrotic], save_dc).
spell_stats(dimension_door,          4,  6, 4, force, guaranteed).
% Disintegrate dá 40 de dano extra
spell_stats(disintegrate,           10,  6, 6, force, save_dc).
spell_stats(dissonant_whispers,      3,  6, 1, psychic, save_dc).
% Earthquake
% Ensnaring Strike
% Evard’s Black Tentacles
% False life gives an extra 4 temporary hp
spell_stats(false_life,              1,  4, 1, temporary_hp, guaranteed).
% Feeblemind
% Finger of Death
spell_stats(fireball,                8,  6, 3, fire, save_dc).
% Fire Shield
% Fire Storm
% Flame Blade
% Flame Strike
% Flaming Sphere
% Glyph of Warding
% Guardian of Faith
spell_stats(guiding_bolt,            4, 6, 1, radiant, spell_roll).
% Hail of Thorns
% Harm
% Heal
% Healing word adiciona o modificador de spellcasting
spell_stats(healing_word,            1, 4, 1, healing, guaranteed).
% Heat Metal
% Hellish Rebuke
spell_stats(hex,                     1, 6, 1, necrotic, guaranteed).
% Hunger of Hadar
% Hunter's Mark
% Ice Storm
% Incendiary Cloud
% Inflict Wounds
% Insect Plague
% Lightning Arrow
% Lightning Bolt
% Cada Magic Missile dá 1 de dano bônus. São 3 mísseis, esse é o dano de 1
spell_stats(magic_missile,           1,  4, 1, force, guaranteed).
% Mass Cure Wounds
% Mass Healing Word
% Melf's Acid Arrow
% Meteor Swarm
% Moonbeam
% Otiluke’s Freezing Sphere
% Phantasmal Killer
% Prayer of Healing
% Prismatic Spray
% Prismatic Wall
% Ray of Sickness
% Regenerate
% São 3 raios, esse é o dano de 1
spell_stats(scorching_ray,           2,  6, 2, fire, spell_roll).
% Searing Smite
spell_stats(shatter,                 3,  8, 2, thunder, save_dc).
% Spike Growth
% Spirit Guardians
% Staggering Smite
% Sunbeam
% Sunburst
% Thunderous Smite
spell_stats(vampiric_touch,          3,  6, 3, necrotic, spell_roll).
% Wall of Fire
% Wall of Ice
% Wall of Thorns
% Weird
% Wind Wall
spell_stats(witch_bolt,              1, 12, 1, lightning, spell_roll).
spell_stats(wrathful_smite,          1,  6, 1, psychic, guaranteed).

% Nível da Cantrip
cantrip_level(Level, 1) :- Level >=  1, Level =<  4, !.
cantrip_level(Level, 2) :- Level >=  5, Level =< 10, !.
cantrip_level(Level, 3) :- Level >= 11, Level =< 16, !.
cantrip_level(Level, 4) :- Level >= 17.


% Bônus de acerto
spellcasting_bonus(Spellcasting_bonus) :-
  character_class(Class),
  spellcasting_attribute(Class, Attribute),
  attribute_modifier(Attribute, Attribute_Mod),
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Mod),
  Spellcasting_bonus is Attribute_Mod + Proficiency_Mod.
% Classe de Dificuldade
spellDC_value(DC_value) :-
  spellcasting_bonus(Spellcasting_bonus),
  DC_value is 8 + Spellcasting_bonus.
