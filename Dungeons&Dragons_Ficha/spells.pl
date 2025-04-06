
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
spell_stats(blade_barrier,             6, 10, 6, slashing, save_dc).
spell_stats(blight,                    8,  8, 4, necrotic, save_dc).
spell_stats(blinding_smite,            3,  8, 3, radiant, guaranteed).
spell_stats(branding_smite,            2,  6, 2, radiant, guaranteed).
spell_stats(burning_hands,             3,  6, 1, fire, save_dc).
spell_stats(call_lightning,            3, 10, 3, lightning, save_dc).
% Chain lightning não aumenta dano com upcast
spell_stats(chain_lightning,          10,  8, 6, lightning, save_dc).
spell_stats(chromatic_orb,             3,  8, 1, [acid, cold, fire, lightning, poison, thunder], spell_roll).
spell_stats(circle_of_death,           8,  6, 6, necrotic, save_dc).
spell_stats(cloud_of_daggers,          4,  4, 2, slashing, guaranteed).
spell_stats(cloudkill,                 5,  8, 5, poison, save_dc).
spell_stats(cone_of_cold,              8,  8, 5, cold, save_dc).
spell_stats(conjure_barrage,           3,  8, 3, [bludgeoning, piercing, slashing], save_dc).
spell_stats(cordon_of_arrows,          1,  6, 2, piercing, save_dc).
spell_stats(crusaders_mantle,          1,  4, 3, radiant, guaranteed).
spell_stats(cure_wounds,               1,  8, 1, healing, guaranteed).
spell_stats(delayed_blast_fireball,   12,  6, 7, fire, save_dc).
% O dano de Destructive Wave é separado em 5d6 thunder e 5d6 radiant ou necrotic
spell_stats(destructive_wave,         10,  6, 5, [thunder, radiant, necrotic], save_dc).
spell_stats(dimension_door,            4,  6, 4, force, guaranteed).
spell_stats(disintegrate,             10,  6, 6, force, save_dc).
spell_stats(dissonant_whispers,        3,  6, 1, psychic, save_dc).
spell_stats(earthquake,                5,  6, 8, bludgeoning, save_dc).
spell_stats(ensnaring_strike,          1,  6, 1, piercing, save_dc).
spell_stats(evards_black_tentacles,    3,  6, 4, bludgeoning, save_dc).
spell_stats(false_life,                1,  4, 1, temporary_hp, guaranteed).
spell_stats(feeblemind,                4,  6, 8, psychic, guaranteed).
spell_stats(finger_of_death,           7,  8, 7, necrotic, save_dc).
spell_stats(fireball,                  8,  6, 3, fire, save_dc).
spell_stats(fire_shield,               2,  8, 4, [fire, cold], guaranteed).
spell_stats(fire_storm,                7, 10, 7, fire, save_dc).
% Flame Blade é uma arma, então é mais lógico tratá-la como uma
% O dano de Flame Strike é metade radiant e metade fire
spell_stats(flame_strike,              8,  6, 5, [fire, radiant], save_dc).
spell_stats(flaming_sphere,            2,  6, 2, fire, save_dc).
% Glyph of Warding
% Guardian of Faith dá exatos 20 de dano (ou metade)
spell_stats(guiding_bolt,              4,  6, 1, radiant, spell_roll).
spell_stats(hail_of_thorns,            1, 10, 1, piercing, save_dc).
spell_stats(harm,                     14,  6, 6, necrotic, save_dc).
% Heal recupera exatos 70 pontos de vida
spell_stats(healing_word,              1,  4, 1, healing, guaranteed).
spell_stats(heat_metal,                2,  8, 2, fire, guaranteed).
spell_stats(hellish_rebuke,            2, 10, 1, fire, save_dc).
spell_stats(hex,                       1,  6, 1, necrotic, guaranteed).
% Hunger of Hadar, tem metade do dano garantido (o cold), e metade em
% um teste de resistência, além disso, upcasting não aumenta
% o dano.
% Hunter's Mark, upcasting não aumenta o dano
% Ice Storm dá 2d8 bludgeoning e 4d6 cold, aumenta só o bludgeoning
% com upcast
spell_stats(incendiary_cloud,         10,  8, 8, fire, save_dc).
spell_stats(inflict_wounds,            3, 10, 1, necrotic, spell_roll).
spell_stats(insect_plague,             4, 10, 5, piercing, save_dc).
% Lightning Arrow tem dano separado para quem era alvo principal
% e quem estava na área, além de o primeiro ser garantido com o acerto
% de ataque normal e o segundo ser teste de resistência
spell_stats(lightning_bolt,            8,  6, 3, lightning, save_dc).
% Esse é o dano de 1 magic_missile
spell_stats(magic_missile,             1,  4, 1, force, guaranteed).
spell_stats(mass_cure_wounds,          3,  8, 5, healing, guaranteed).
spell_stats(mass_healing_word,         1,  4, 3, healing, guaranteed).
% Melf's Acid Arrow tem duas instâncias de dano separadas
% Meteor Swarm tem metade do dano fire, metade bludgeoning
spell_stats(meteor_swarm,             40,  6, 9, [bludgeoning, fire], save_dc).
spell_stats(moonbeam,                  2, 10, 2, radiant, save_dc).
% Otiluke’s Freezing Sphere
spell_stats(otilukes_freezing_sphere, 10,  6, 6, cold, save_dc).
spell_stats(phantasmal_killer,         4, 10, 4, psychic, save_dc).
spell_stats(prayer_of_healing,         2,  8, 2, healing, guaranteed).
% Prismatic Spray é complexo demais
% Prismatic Wall é complexo demais
spell_stats(ray_of_sickness,           2,  8, 1, poison, spell_roll).
% Regenerate
% São 3 raios, esse é o dano de 1
spell_stats(scorching_ray,             2,  6, 2, fire, spell_roll).
spell_stats(searing_smite,             1,  6, 1, fire, save_dc).
spell_stats(shatter,                   3,  8, 2, thunder, save_dc).
% Spike Growth não aumenta dano com upcast
spell_stats(spirit_guardian,           3,  8, 3, [radiant, necrotic], save_dc).
% Staggering Smite não aumenta dano com upcast
% Sunbeam não aumenta dano com upcast
% Sunburst não aumenta dano com upcast
% Thunderous Smite não aumenta dano com upcast
spell_stats(vampiric_touch,            3,  6, 3, necrotic, spell_roll).
spell_stats(wall_of_fire,              5,  8, 4, fire, save_dc).
spell_stats(wall_of_ice,              10,  6, 6, cold, save_dc).
spell_stats(wall_of_thorns,            7,  8, 6, piercing, save_dc).
spell_stats(weird,                     4, 10, 9, psychic, save_dc).
spell_stats(wind_wall,                 3,  8, 3, bludgeoning, save_dc).
spell_stats(witch_bolt,                1, 12, 1, lightning, spell_roll).
spell_stats(wrathful_smite,            1,  6, 1, psychic, guaranteed).


% Nível da Cantrip
cantrip_level(Level, 1) :- Level >=  1, Level =<  4, !.
cantrip_level(Level, 2) :- Level >=  5, Level =< 10, !.
cantrip_level(Level, 3) :- Level >= 11, Level =< 16, !.
cantrip_level(Level, 4) :- Level >= 17.


% Bônus de acerto
spellcasting_bonus(Spellcasting_bonus) :-
  spellcasting_attribute_bonus(Attribute_Mod),
  character_level(Level),
  proficiency_modifier(Level, Proficiency_Mod),
  Spellcasting_bonus is Attribute_Mod + Proficiency_Mod.
spellcasting_attribute_bonus(Speelcasting_attribute_bonus) :-
  character_class(Class),
  spellcasting_attribute(Class, Attribute),
  attribute_modifier(Attribute, Speelcasting_attribute_bonus).

% Classe de Dificuldade
spellDC_value(DC_value) :-
  spellcasting_bonus(Spellcasting_bonus),
  DC_value is 8 + Spellcasting_bonus.


% Bônus de dano em determinados feitiços
spell_bonus(cure_wounds,        X) :-
  spellcasting_attribute_bonus(X),  !.
spell_bonus(disintegrate,      40) :- !.
spell_bonus(false_life,         4) :- !.
spell_bonus(finger_of_death,   30) :- !.
spell_bonus(healing_word,       X) :-
  spellcasting_attribute_bonus(X),  !.
spell_bonus(magic_missile,      1) :- !.
spell_bonus(mass_cure_wounds,   X) :-
  spellcasting_attribute_bonus(X),  !.
spell_bonus(mass_healing_word,  X) :-
  spellcasting_attribute_bonus(X),  !.
spell_bonus(prayer_of_healing,  X) :-
  spellcasting_attribute_bonus(X),  !.

spell_bonus(_,                  0).

% Atributo para teste de resistência em determinados feitiços e cantrips
cantrip_save_dc(acid_splash,     dexterity).
cantrip_save_dc(poison_spray,    constitution).
cantrip_save_dc(sacred_flame,    dexterity).
cantrip_save_dc(vicious_mockery, wisdom).


spell_save_dc(arms_of_hadar,            strength).
spell_save_dc(blade_barrier,            dexterity).
spell_save_dc(blight,                   constitution).
spell_save_dc(burning_hands,            dexterity).
spell_save_dc(call_lightning,           dexterity).
spell_save_dc(chain_lightning,          dexterity).
spell_save_dc(circle_of_death,          constitution).
spell_save_dc(cloudkill,                constitution).
spell_save_dc(cone_of_cold,             constitution).

spell_save_dc(dissonant_whispers,       wisdom).

spell_save_dc(fireball,                 dexterity).

spell_save_dc(moonbeam,                 constitution).
spell_save_dc(otilukes_freezing_sphere, constitution).
spell_save_dc(phantasmal_killer,        wisdom).
spell_save_dc(spirit_guardians,         wisdom).
