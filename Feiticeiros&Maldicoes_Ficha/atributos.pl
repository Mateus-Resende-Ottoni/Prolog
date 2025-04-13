%%%%%% Ficha de Customiza��o %%%%%%

% Prim�rios
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

% B�nus que afetam pontos de vida
personagem_pv_bonus(0).

% B�nus que afetam iniciativa
personagem_iniciativa_bonus(0).
% B�nus que afetam Classe de Armadura
personagem_ca_bonus(0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% Fatos e c�lculos

pontos_de_vida(PV) :-
    personagem_pv_base(PV_base),
    personagem_pv_bonus(PV_bonus),
    PV is PV_base + PV_bonus.
