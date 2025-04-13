
% Importação
:- consult('dados.pl').
:- consult('genericos.pl').
%%%%%%%%% Ficha de customização %%%%%%%%%%

%%%%%% Básicos
% Nível total do personagem
personagem_nivel(1).
% Classe(s) do personagem
personagem_classe(lutador).
% Nível do personagem em cada classe
personagem_nivel_classe(lutador, 1) :- !.
personagem_nivel_classe(_, 0).

%%%%%% ------------------------------
