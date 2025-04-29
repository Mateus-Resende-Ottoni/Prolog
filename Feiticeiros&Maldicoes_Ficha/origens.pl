%%%%%% Ficha de Customização %%%%%%

% Origem do personagem
personagem_origem(herdado).
% Clã é mais relevante para a origem herdado, mas também funciona
%  como uma informação genérica do personagem
personagem_cla(gojo).

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

%%%%%%%%%%
%%%%% Lista de origens
origem(inato).
origem(herdado).
origem(derivado).
origem(restringido).
origem(feto_amaldicoado_hibrido).
origem(sem_tecnica).
origem(corpo_amaldicoado_mutante).
% Origens adicionais
origem(maldicao). % Detalhada no Grimório das Maldições
origem(feiticeiro_reencarnado). % Detalhada no Guia do Narrador

%%%%% Características obtidas pela origem
origem_caracteristicas(inato, talento_natural).
origem_caracteristicas(inato, marca_registrada).

origem_caracteristicas(herdado, heranca_de_cla).

origem_caracteristicas(derivado, energia_antinatural).
origem_caracteristicas(derivado, desenvolvimento_inesperado).

origem_caracteristicas(restringido, restricao_celeste).

origem_caracteristicas(feto_amaldicoado_hibrido, heranca_maldita).
origem_caracteristicas(feto_amaldicoado_hibrido, fisico_amaldicoado).
origem_caracteristicas(feto_amaldicoado_hibrido, vigor_maldito).

origem_caracteristicas(sem_tecnica, estudos_dedicados).
origem_caracteristicas(sem_tecnica, empenho_implacavel).

origem_caracteristicas(corpo_amaldicoado_mutante, forma_de_vida_sintetica).
origem_caracteristicas(corpo_amaldicoado_mutante, mutacao_abrupta).

% Características de origens adicionais
origem_caracteristicas(maldicao, existencia_metafisica).
origem_caracteristicas(maldicao, natureza_amaldicoada).

origem_caracteristicas(feiticeiro_reencarnado, conhecimentos_passados).
origem_caracteristicas(feiticeiro_reencarnado, experiencia_do_reencarnado).

%%% Características de clãs (origem Herdado)
cla_caracteristicas(gojo,    potencial_lendario).
cla_caracteristicas(inumaki, olhos_de_cobra_e_presas).
cla_caracteristicas(kamo,    valor_do_sangue).
cla_caracteristicas(zenin,   foco_no_poder).

%%% Características de anatomia (origem Feto Amaldiçoado Híbrido)
anatomia_caracteristicas(alma_maldita).
anatomia_caracteristicas(anatomia_incompreensivel).
anatomia_caracteristicas(arma_natural).
anatomia_caracteristicas(capacidade_de_voo).
anatomia_caracteristicas(carapaca_mutante).
anatomia_caracteristicas(corpo_especializado).
anatomia_caracteristicas(desenvolvimento_exagerado).
anatomia_caracteristicas(devorador_de_energia).
anatomia_caracteristicas(instinto_sanguinario).
anatomia_caracteristicas(membros_extras).
anatomia_caracteristicas(olhos_sombrios).
anatomia_caracteristicas(presenca_nefasta).
anatomia_caracteristicas(sangue_toxico).
%%%%%%%%%%

