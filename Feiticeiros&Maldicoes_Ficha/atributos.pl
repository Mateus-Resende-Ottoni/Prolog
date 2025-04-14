%%%%%% Ficha de Customização %%%%%%

% Primários _ valor base
%(sem bônus de origem, nível, talento e treinamento)
personagem_atributo_base(forca,        10).
personagem_atributo_base(destreza,     10).
personagem_atributo_base(constituicao, 10).
personagem_atributo_base(inteligencia, 10).
personagem_atributo_base(sabedoria,    10).
personagem_atributo_base(carisma,      10).


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

% Total em atributos
personagem_atributo(Atributo, Total) :-
    personagem_atributo_base(Atributo, X),
    personagem_atributo_bonus(Atributo, Y),
    Total is X + Y.


% Pontos de vida total
pontos_de_vida(PV) :-
    personagem_pv_base(PV_base),
    personagem_pv_bonus(PV_bonus),
    PV is PV_base + PV_bonus.
