
% Importação
:- consult('armas.pl').
:- consult('atributos.pl').
:- consult('dados.pl').
:- consult('escudos.pl').
:- consult('genericos.pl').
:- consult('itens.pl').
:- consult('pericias.pl').
:- consult('origens.pl').
:- consult('uniformes.pl').
%%%%%%%%% Ficha de customização %%%%%%%%%%

personagem_nome("Satoru Gojo").

%%%%%% Básicos
% Nível total do personagem
personagem_nivel(1).

% Especialização(ões) do personagem
personagem_especializacao(lutador).
% Nível do personagem em cada especialização
personagem_nivel_especializacao(lutador, 1) :- !.
personagem_nivel_especializacao(_, 0).

% Origem do personagem
personagem_origem(herdado).
% Clã é mais relevante para a origem herdado, mas também funciona
%  como uma informação genérica do personagem
personagem_cla(gojo).

%%%%%% ------------------------------
