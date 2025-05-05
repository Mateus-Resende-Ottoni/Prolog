%%%%%% Ficha de Customização %%%%%%

%%% Primários _ valor base
%(sem bônus de origem, nível, talento e treinamento)
personagem_atributo_base(forca,        10).
personagem_atributo_base(destreza,     10).
personagem_atributo_base(constituicao, 10).
personagem_atributo_base(inteligencia, 10).
personagem_atributo_base(sabedoria,    10).
personagem_atributo_base(carisma,      10).


%%% Derivados
% Bônus não incluem valores obtidos de
%  aptidões, treinamentos e talentos.

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

%%%%% Total em atributos
personagem_atributo(Atributo, Total) :-
    personagem_atributo_base(Atributo, X),
    personagem_atributo_bonus(Atributo, Y),
    Total is X + Y.

%%%%% Modificar de atributo
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

%%%%% Modificador de maestria
personagem_maestria(Maestria) :-
    personagem_nivel(Nivel),
    maestria(Nivel, Maestria).
% Tabela de maesria
maestria(Nivel, 2) :- Nivel >= 1, Nivel =< 4, !.
maestria(Nivel, 3) :- Nivel >= 5, Nivel =< 8, !.
maestria(Nivel, 4) :- Nivel >= 9, Nivel =< 12, !.
maestria(Nivel, 5) :- Nivel >= 13, Nivel =< 16, !.
maestria(Nivel, 6) :- Nivel >= 17.


%%%%% Pontos de vida total
pontos_de_vida(PV) :-
    personagem_pv_base(PV_base),
    personagem_pv_bonus(PV_bonus),
    PV is PV_base + PV_bonus.


%%%%% Iniciativa total
iniciativa(Iniciativa) :-
    personagem_modificador(destreza, Destreza_mod),
    personagem_iniciativa_bonus(Iniciativa_bonus),
    iniciativa_extra(Iniciativa_extra),
    Iniciativa is Destreza_mod + Iniciativa_bonus + Iniciativa_extra.

iniciativa_extra(Iniciativa_extra) :-
    iniciativa_extra_bonus(instinto_sanguinario,      B1),
    iniciativa_extra_bonus(reacao_rapida,             B2),
    iniciativa_extra_bonus(pronto_para_agir,          B3),
    % B4 _ Arma com a propriedade otimizada
    iniciativa_extra_bonus(tecnicas_de_reacao_rapida, B5),
    Iniciativa_extra is B1 + B2 + B3 + B5.

iniciativa_extra_bonus(instinto_sanguinario,      Bonus) :-
    personagem_anatomia_caracteristicas(instinto_sanguinario), !,
    personagem_maestria(Bonus).
iniciativa_extra_bonus(reacao_rapida,             Bonus) :-
    personagem_habilidade(reacao_rapida, Atributo), !,
    personagem_modificador(Atributo, Bonus).
iniciativa_extra_bonus(pronto_para_agir,          Bonus) :-
    personagem_habilidade(pronto_para_agir), !,
    personagem_modificador(carisma, Bonus).
% Arma com a propriedade 'Otimizada'
iniciativa_extra_bonus(tecnicas_de_reacao_rapida, Bonus) :-
    personagem_talento(tecnicas_de_reacao_rapida), !,
    Bonus is 5.

% Valor padrão para caso não se possua o que garante o bônus
iniciativa_extra_bonus(_,0).

%%%%% Classe de Armadura total
classe_de_armadura(CA) :-
    personagem_modificador(destreza, Destreza_mod),
    personagem_ca_bonus(CA_bonus),
    CA is Destreza_mod + CA_bonus.
