%%%%%% Ficha de Customização %%%%%%

% Primários
personagem_atributo(forca,        10).
personagem_atributo(destreza,     10).
personagem_atributo(constituicao, 10).
personagem_atributo(inteligencia, 10).
personagem_atributo(sabedoria,    10).
personagem_atributo(carisma,      10).
% Derivados

% Quantidade base de pontos de vida
% obtidos pela classe
personagem_pv_base(8).

% Bônus que afetam pontos de vida
personagem_pv_bonus(0).

% Bônus que afetam iniciativa
personagem_iniciativa_bonus(0).
% Bônus que afetam Classe de Armadura
personagem_ca_bonus(0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% Fatos e cálculos

pontos_de_vida(PV) :-
    personagem_pv_base(PV_base),
    personagem_pv_bonus(PV_bonus),
    PV is PV_base + PV_bonus.
