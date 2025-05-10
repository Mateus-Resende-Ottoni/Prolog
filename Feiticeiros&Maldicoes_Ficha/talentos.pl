%%%%%% Ficha de Customização %%%%%%

%%% Lista de talentos do personagem
personagem_talento(ataque_infalivel).
personagem_talento(incremento_de_atributo, inteligencia).

% Talentos com múltiplas escolhas são escritos várias vezes
% personagem_talento(mestre_da_criacao, oficio_ferreiro).
% personagem_talento(mestre_da_criacao, oficio_medico).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Lista de Talentos
%%% Talentos Gerais
talento(adepto_de_combate).
talento(afinidade_com_tecnica).
talento(arremessos_debilitantes).
talento(artesao_amaldicoado).
talento(ataque_infalivel).
talento(atencao_infalivel).
talento(atirador_preciso).
talento(dedicacao_recompensadora).
talento(favorecido_pela_sorte).
talento(feiticeiro_companheiro).
talento(guarda_infalivel).
talento(incremento_de_atributo).
talento(investida_aprimorada).
talento(maldicao_de_bolso).
talento(mestre_das_armas).
talento(mestre_defensivo).
talento(provocacao_desafiadora).
talento(resiliencia_melhorada).
talento(tecnicas_agressivas_de_escudo).
talento(tecnicas_de_arremesso).
talento(tecnicas_de_reacao_rapida).
talento(tecnicas_defensivas_de_escudo).
talento(tempestade_de_ideias).
talento(tecnicas_de_empunhadura_dupla).
talento(tecnicas_de_imobilizacao).
talento(alma_inquebravel).
talento(robustez_aprimorada).
talento(determinado_a_viver).
talento(correr_e_atirar).
talento(tecnicas_de_esquiva).
talento(tecnicas_de_mobilidade).
talento(discurso_motivador).
talento(tecnicas_de_ocultamento).
talento(aptidao_desenvolvida).
talento(disparos_perfurantes).
talento(mestre_da_criacao).
talento(mestre_dos_chicotes).
talento(tecnicas_do_sentinela).
talento(rapido_no_gatilho).
talento(especialista_em_concussao).
talento(especialista_em_cortes).
talento(especialista_em_perfuracao).
talento(mestre_do_arremesso).
talento(segredos_do_artesao_da_alma).

%%% Talentos exclusivos a origens
%%% (Restrição estabelecida na
%%%   lista de pré-requisitos)
talento(familiaridade_com_tecnica).
talento(ideias_originais).
talento(conhecimentos_sigilosos).
talento(manual_de_tecnica).
talento(expansao_de_reserva).
talento(quebra_de_limites).
talento(desarme_oportunista).
talento(regeneracao_maior).
talento(fisico_aperfeicoado).
talento(reposicao_sanguinea).
talento(coleta_de_talismas).
talento(estudo_amaldicoado).
talento(expansao_de_estilo).
talento(nocao_e_preparacao).
talento(nucleos_especializados).
talento(nucleos_reforcados).


%%%%% Lista de pré-requisitos de Talentos
%%% Talentos gerais
talento_requisito(tecnicas_de_empunhadura_dupla) :- !,
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 14; A2 >= 14).
talento_requisito(tecnicas_de_imobilizacao) :- !,
    personagem_atributo(forca, A1), personagem_atributo(constituicao, A2),
    (A1 >= 16; A2 >= 16).
talento_requisito(alma_inquebravel) :- !,
    personagem_atributo(constituicao, A), A >= 14.
talento_requisito(robustez_aprimorada) :- !,
    personagem_atributo(constituicao, A), A >= 14.
talento_requisito(determinado_a_viver) :- !,
    personagem_atributo(constituicao, A), personagem_nivel(N),
    (A >= 16; N >= 10).
talento_requisito(correr_e_atirar) :- !,
    personagem_atributo(destreza, A), A >= 14.
talento_requisito(tecnicas_de_esquiva) :- !,
    personagem_atributo(destreza, A), A >= 14.
talento_requisito(tecnicas_de_mobilidade) :- !,
    personagem_atributo(destreza, A), A >= 14.
% Discurso Motivador
talento_requisito(tecnicas_de_ocultamento) :- !,
    personagem_pericia(furtividade, P), (P = proficiente; P = especialista).
talento_requisito(aptidao_desenvolvida) :- !,
    personagem_nivel(N), N >= 4.
talento_requisito(disparos_perfurantes) :- !,
    personagem_nivel(N), N >= 4.
% Mestre da Criação
talento_requisito(mestre_dos_chicotes) :- !,
    personagem_nivel(N), N >= 5.
talento_requisito(tecnicas_do_sentinela) :- !,
    personagem_nivel(N), N >= 5.
% Rápido no Gatilho
talento_requisito(especialista_em_concussao) :- !,
    personagem_nivel(N), N >= 8.
talento_requisito(especialista_em_cortes) :- !,
    personagem_nivel(N), N >= 8.
talento_requisito(especialista_em_perfuracao) :- !,
    personagem_nivel(N), N >= 8.
% Mestre do Arremesso
% Segredos do Artesão da Alma

%%% Talentos de Origem
talento_requisito(familiaridade_com_tecnica) :- !,
    personagem_origem(inato),
    personagem_nivel(N), N >= 12.
talento_requisito(ideias_originais) :- !,
    personagem_origem(inato),
    personagem_nivel(N), N >= 5.
talento_requisito(conhecimentos_sigilosos) :- !,
    personagem_origem(herdado),
    personagem_nivel(N), N >= 6.
talento_requisito(manual_de_tecnica) :- !,
    personagem_origem(herdado),
    personagem_nivel(N), N >= 5.
talento_requisito(expansao_de_reserva) :- !,
    personagem_origem(derivado),
    personagem_nivel(N), N >= 8.
talento_requisito(quebra_de_limites) :- !,
    personagem_origem(derivado),
    personagem_nivel(N), N >= 6.
talento_requisito(desarme_oportunista) :- !,
    personagem_origem(restringido),
    personagem_nivel(N), N >= 4.
talento_requisito(regeneracao_maior) :- !,
    personagem_origem(restringido),
    personagem_nivel(N), N >= 10.
talento_requisito(fisico_aperfeicoado) :- !,
    personagem_origem(feto_amaldicoado_hibrido),
    personagem_nivel(N), N >= 6.
talento_requisito(reposicao_sanguinea) :- !,
    personagem_origem(feto_amaldicoado_hibrido),
    personagem_nivel(N), N >= 6.
talento_requisito(coleta_de_talismas) :- !,
    personagem_origem(sem_tecnica).
talento_requisito(estudo_amaldicoado) :- !,
    personagem_origem(sem_tecnica).
talento_requisito(expansao_de_estilo) :- !,
    personagem_origem(sem_tecnica),
    personagem_aptidao(dominio_simples),
    personagem_nivel(N), N >= 6.
talento_requisito(nocao_e_preparacao) :- !,
    personagem_origem(sem_tecnica),
    personagem_nivel(N), N >= 4.
talento_requisito(nucleos_especializados) :- !,
    personagem_origem(corpo_amaldicoado),
    personagem_nivel(N), N >= 10.
talento_requisito(nucleos_reforcados) :- !,
    personagem_origem(corpo_amaldicoado),
    personagem_nivel(N), N >= 10.

% Valor padrão
talento_requisito(_) :- true.
