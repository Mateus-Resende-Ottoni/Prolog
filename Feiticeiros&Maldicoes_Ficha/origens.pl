%%%%%% Ficha de Customização %%%%%%

% Bônus de atributo de origem
personagem_atributo_bonus(forca,        0) :- !.
personagem_atributo_bonus(destreza,     0) :- !.
personagem_atributo_bonus(constituicao, 0) :- !.
personagem_atributo_bonus(inteligencia, 0) :- !.
personagem_atributo_bonus(sabedoria,    0) :- !.
personagem_atributo_bonus(carisma,      0) :- !.
% Valor padrão
personagem_atributo_bonus(_,            0).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Lista de origens
origem(inato).
origem(herdado).
origem(derivado).
origem(restringido).
origem(feto_amaldicoado_hibrido).
origem(sem_tecnica).
origem(corpo_amaldicoado_mutante).
