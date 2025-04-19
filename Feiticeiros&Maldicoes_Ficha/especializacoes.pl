%%%%%% Ficha de Customiza��o %%%%%%

% Especializa��o(�es) do personagem
personagem_especializacao(especialista_em_tecnica).

% Atributos usados por classe
personagem_atributo_tecnica(especialista_em_tecnica, inteligencia).

% Especializa��o do primeiro nivel do personagem
personagem_primeiro_nivel(especialista_em_tecnica).

% N�vel do personagem em cada especializa��o
personagem_nivel_especializacao(especialista_em_tecnica, 1) :- !.
% Valor padr�o para indicar que os restantes s�o n�vel 0
personagem_nivel_especializacao(_, 0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%
% Lista de especializa��es
especializacao(lutador).
especializacao(especialista_em_combate).
especializacao(especialista_em_tecnica).
especializacao(controlador).
especializacao(suporte).
especializacao(restringido).
%%%%%
% Lista de Pontos de Vida no primeiro n�vel
especializacao_pv1(lutador,                 12).
especializacao_pv1(especialista_em_combate, 12).
especializacao_pv1(especialista_em_tecnica, 10).
especializacao_pv1(controlador,             10).
especializacao_pv1(suporte,                 10).
especializacao_pv1(restringido,             16).
%%%%%
% Lista de Pontos de Vida padr�o por n�vel
especializacao_pv(lutador,                 6).
especializacao_pv(especialista_em_combate, 6).
especializacao_pv(especialista_em_tecnica, 5).
especializacao_pv(controlador,             5).
especializacao_pv(suporte,                 5).
especializacao_pv(restringido,             7).
%%%%%
% Lista de Pontos de Energia no primeiro n�vel
% Especialista em T�cnica, Controlador e Suporte ganham energia b�nus
%  com base nos seus atributos de t�cnica
especializacao_pe1(lutador,                 4).
especializacao_pe1(especialista_em_combate, 4).
especializacao_pe1(especialista_em_tecnica, 6).
especializacao_pe1(controlador,             5).
especializacao_pe1(suporte,                 5).
especializacao_pe1(restringido,             0).
%%%%%
% Lista de Pontos de Energia por n�vel
especializacao_pe(lutador,                 4).
especializacao_pe(especialista_em_combate, 4).
especializacao_pe(especialista_em_tecnica, 6).
especializacao_pe(controlador,             5).
especializacao_pe(suporte,                 5).
especializacao_pe(restringido,             0).
%%%%%
% Lista de Atributos usados em Classes de Dificuldade
especializacao_atributos(lutador,                 [forca, destreza]).
especializacao_atributos(especialista_em_combate, [forca, destreza, sabedoria]).
especializacao_atributos(especialista_em_tecnica, [inteligencia, sabedoria]).
especializacao_atributos(controlador,             [carisma, sabedoria]).
especializacao_atributos(suporte,                 [carisma, sabedoria]).
especializacao_atributos(restringido,             [forca, destreza, constituicao, inteligencia, sabedoria, carisma]).
%%%%%

