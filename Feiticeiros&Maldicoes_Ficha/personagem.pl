
% Importa��o
:- consult('armas.pl').
:- consult('atributos.pl').
:- consult('dados.pl').
:- consult('genericos.pl').
:- consult('pericias.pl').
:- consult('origens.pl').
%%%%%%%%% Ficha de customiza��o %%%%%%%%%%

%%%%%% B�sicos
% N�vel total do personagem
personagem_nivel(1).

% Classe(s) do personagem
personagem_classe(lutador).
% N�vel do personagem em cada classe
personagem_nivel_classe(lutador, 1) :- !.
personagem_nivel_classe(_, 0).

% Origem do personagem
personagem_origem(inato).

%%%%%% ------------------------------
