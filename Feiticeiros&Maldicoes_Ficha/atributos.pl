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

%%% Total em atributos
personagem_atributo(Atributo, Total) :-
    personagem_atributo_base(Atributo, X),
    personagem_atributo_bonus(Atributo, Y),
    Total is X + Y.

%%% Modificar de atributo
personagem_modificador(Atributo, Modificador) :-
    personagem_atributo(Atributo, Total),
    modificador(Total, Modificador).
% Tabela dos modificadores
modificador(Valor, -5) :- Valor ==  1 , !.
modificador(Valor, -4) :- Valor >=  2 , Valor =<  3 ,!.
modificador(Valor, -3) :- Valor >=  4 , Valor =<  5 ,!.
modificador(Valor, -2) :- Valor >=  6 , Valor =<  7 ,!.
modificador(Valor, -1) :- Valor >=  8 , Valor =<  9 ,!.
modificador(Valor,  0) :- Valor >= 10 , Valor =< 11 ,!.
modificador(Valor,  1) :- Valor >= 12 , Valor =< 13 ,!.
modificador(Valor,  2) :- Valor >= 14 , Valor =< 15 ,!.
modificador(Valor,  3) :- Valor >= 16 , Valor =< 17 ,!.
modificador(Valor,  4) :- Valor >= 18 , Valor =< 19 ,!.
modificador(Valor,  5) :- Valor >= 20 , Valor =< 21 ,!.
modificador(Valor,  6) :- Valor >= 22 , Valor =< 23 ,!.
modificador(Valor,  7) :- Valor >= 24 , Valor =< 25 ,!.
modificador(Valor,  8) :- Valor >= 26 , Valor =< 27 ,!.
modificador(Valor,  9) :- Valor >= 28 , Valor =< 29 ,!.
modificador(Valor, 10) :- Valor >= 30.


%%% Pontos de vida total
pontos_de_vida(PV) :-
    personagem_pv_base(PV_base),
    personagem_pv_bonus(PV_bonus),
    PV is PV_base + PV_bonus.
