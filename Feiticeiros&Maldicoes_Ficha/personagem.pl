
% Importa��o
:- consult('dados.pl').
:- consult('genericos.pl').
%%%%%%%%% Ficha de customiza��o %%%%%%%%%%

%%%%%% B�sicos
% N�vel total do personagem
personagem_nivel(1).
% Classe(s) do personagem
personagem_classe(lutador).
% N�vel do personagem em cada classe
personagem_nivel_classe(lutador, 1) :- !.
personagem_nivel_classe(_, 0).

%%%%%% ------------------------------
