
% Importa��o
:- consult('dados.pl').
%%%%%%%%% Ficha de customiza��o %%%%%%%%%%

%%% B�sicos
personagem_nivel(1).

%%% Atributos
% Prim�rios
personagem_atributo(forca,        10).
personagem_atributo(destreza,     10).
personagem_atributo(constituicao, 10).
personagem_atributo(inteligencia, 10).
personagem_atributo(sabedoria,    10).
personagem_atributo(carisma,      10).
% Derivados
personagem_iniciativa_bonus(0).
personagem_ca_bonus(0).
%%%

personagem_pericia(acrobacia, proeficiente).
personagem_pericia(astucia,   nao_proeficiente).
personagem_pericia(atletismo, especialista).

