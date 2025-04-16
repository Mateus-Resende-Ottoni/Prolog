
% Importação
:- consult('armas.pl').
:- consult('atributos.pl').
:- consult('dados.pl').
:- consult('genericos.pl').
:- consult('pericias.pl').
:- consult('origens.pl').
%%%%%%%%% Ficha de customização %%%%%%%%%%

personagem_nome("Satoru Gojo").

%%%%%% Básicos
% Nível total do personagem
personagem_nivel(1).

% Classe(s) do personagem
personagem_classe(lutador).
% Nível do personagem em cada classe
personagem_nivel_classe(lutador, 1) :- !.
personagem_nivel_classe(_, 0).

% Origem do personagem
personagem_origem(herdado).
% Clã é mais relevante para a origem herdado, mas também funciona
%  como uma informação genérica do personagem
personagem_cla(gojo).

%%%%%% ------------------------------
