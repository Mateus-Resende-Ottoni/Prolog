
% Importa��o
:- consult('armas.pl').
:- consult('atributos.pl').
:- consult('dados.pl').
:- consult('escudos.pl').
:- consult('genericos.pl').
:- consult('itens.pl').
:- consult('pericias.pl').
:- consult('origens.pl').
:- consult('uniformes.pl').
%%%%%%%%% Ficha de customiza��o %%%%%%%%%%

personagem_nome("Satoru Gojo").

%%%%%% B�sicos
% N�vel total do personagem
personagem_nivel(1).

% Especializa��o(�es) do personagem
personagem_especializacao(lutador).
% N�vel do personagem em cada especializa��o
personagem_nivel_especializacao(lutador, 1) :- !.
personagem_nivel_especializacao(_, 0).

% Origem do personagem
personagem_origem(herdado).
% Cl� � mais relevante para a origem herdado, mas tamb�m funciona
%  como uma informa��o gen�rica do personagem
personagem_cla(gojo).

%%%%%% ------------------------------
