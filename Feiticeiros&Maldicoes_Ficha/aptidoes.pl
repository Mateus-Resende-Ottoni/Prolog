%%%%%% Ficha de Customização %%%%%%

%%% Níveis de aptidões
personagem_aptidao_nivel(energia,            0).
personagem_aptidao_nivel(controle_e_leitura, 0).
personagem_aptidao_nivel(barreira,           0).
personagem_aptidao_nivel(dominio,            0).
personagem_aptidao_nivel(energia_reversa,    0).

%%% Lista de aptidões do personagem
personagem_aptidao(aura_reforcada).
personagem_aptidao(aura_anuladora).
personagem_aptidao(rastreio_avancado).
personagem_aptidao(tecnicas_de_barreira).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%% Lista de aptidões amaldiçoadas
%%% aptidao(Nome_da_aptidao, Tipo_da_aptidao)
% Aptidões de aura
aptidao(aura_elemental,            aura).
aptidao(aura_elemental_aprimorada, aura).
aptidao(aura_reforcada,            aura).
aptidao(aura_impenetravel,         aura).
aptidao(casulo_de_energia,         aura).
aptidao(aura_inofensiva,           aura).
aptidao(aura_controlada,           aura).
aptidao(aura_do_comandante,        aura).
aptidao(aura_macabra,              aura).
aptidao(aura_lacerante,            aura).
aptidao(aura_macica,               aura).
aptidao(aura_chamativa,            aura).
aptidao(aura_anuladora,            aura).
aptidao(afinidade_ampliada,        aura).
aptidao(absorcao_elemental,        aura).
aptidao(aura_de_contencao,         aura).
aptidao(aura_drenadora,            aura).
aptidao(aura_embacada,             aura).
aptidao(aura_do_bastiao,           aura).
aptidao(aura_movedica,             aura).
aptidao(enganacao_projetada,       aura).
aptidao(transferencia_de_aura,     aura).
aptidao(aura_redirecionada,        aura).
aptidao(concentrar_aura,           aura).
aptidao(golpe_com_aura,            aura).
aptidao(aura_excessiva,            aura).
% Aptidões de Controle e Leitura
aptidao(rastreio_avancado,          controle_e_leitura).
aptidao(leitura_rapida_de_energia,  controle_e_leitura).
aptidao(canalizar_em_golpe,         controle_e_leitura).
aptidao(canalizacao_avancada,       controle_e_leitura).
aptidao(canalizacao_maxima,         controle_e_leitura).
aptidao(cobrir-se,                  controle_e_leitura).
aptidao(cobertura_avancada,         controle_e_leitura).
aptidao(projetar_energia,           controle_e_leitura).
aptidao(projecao_avancada,          controle_e_leitura).
aptidao(projecao_maxima,            controle_e_leitura).
aptidao(projecao_dividida,          controle_e_leitura).
aptidao(expandir_aura,              controle_e_leitura).
aptidao(identificacao_de_itens,     controle_e_leitura).
aptidao(leitura_de_aura,            controle_e_leitura).
aptidao(punho_divergente,           controle_e_leitura).
aptidao(estimulo_muscular,          controle_e_leitura).
aptidao(estimulo_muscular_avancado, controle_e_leitura).
% Aptidões de Domínio
aptidao(dominio_simples,                   dominio).
aptidao(anular_tecnica,                    dominio).
aptidao(espaco_em_batalha,                 dominio).
aptidao(dominancia_absoluta,               dominio).
aptidao(expansao_de_dominio_incompleta,    dominio).
aptidao(expansao_de_dominio_completa,      dominio).
aptidao(acerto_garantido,                  dominio).
aptidao(expansao_de_dominio_sem_barreiras, dominio).
aptidao(amplificacao_de_dominio,           dominio).
% Aptidões de Barreira
aptidao(tecnicas_de_barreira, barreira).
aptidao(paredes_resistentes,  barreira).
aptidao(barreira_rapida,      barreira).
aptidao(barreira_imediata,    barreira).
aptidao(cortina,              barreira).
% Aptidões de Energia Reversa
aptidao(energia_reversa,              energia_reversa).
aptidao(liberacao_de_energia_reversa, energia_reversa).
aptidao(cura_amplificada,             energia_reversa).
aptidao(cura_em_grupo,                energia_reversa).
aptidao(canalizar_energia_reversa,    energia_reversa).
aptidao(fluxo_constante,              energia_reversa).
aptidao(regeneracao_aprimorada,       energia_reversa).
% Aptidões Especiais
aptidao(raio_negro,                     especial).
aptidao(abencoado_pelas_faiscas_negras, especial).
aptidao(reversao_de_tecnica,            especial).
aptidao(tecnica_maxima,                 especial).

%% Aptidões exclusivas à maldições
% Aptidões de Anatomia
aptidao(absorcao_elemental,         anatomia). % Tem que ser renomeada pois
                                               %  tem outra de mesmo nome
aptidao(armas_naturais,             anatomia).
aptidao(armas_naturais_aprimoradas, anatomia).
aptidao(composicao_elemental,       anatomia).
aptidao(crescimento_corporal,       anatomia).
aptidao(desenvolvimento_fisico,     anatomia).
aptidao(olhos_adicionais,           anatomia).
aptidao(revestimento,               anatomia).
aptidao(revestimento_evoluido,      anatomia).
aptidao(superioridade_fisica,       anatomia).
% Aptidões de Controle e Leitura
aptidao(absorcao_amaldicoada,  controle_e_leitura).
aptidao(estoque_ampliado,      controle_e_leitura).
aptidao(extracao_de_potencial, controle_e_leitura).
aptidao(protecao_constante,    controle_e_leitura).
% Aptidões Especiais
aptidao(regeneracao_corporal,   especial).
aptidao(regeneracao_ampliada,   especial).
aptidao(regeneracao_maxima,     especial).
aptidao(regeneracao_de_membros, especial).
aptidao(fluxo_imparaval,        especial).
aptidao(area_de_dominio,        especial).

%%%%% Lista de Pré-Requisitos para aptidões_amaldicoadas
%% Lista base
% Aptidões de Aura
aptidao_requisito(aura_elemental_aprimorada) :-
    personagem_aptidao(aura_elemental), !.
aptidao_requisito(aura_impenetravel) :-
    personagem_aptidao(aura_reforcada),
    personagem_nivel(N), N >= 10,
    personagem_aptidao_nivel(energia, A_N), A_N >= 2, !.
aptidao_requisito(casulo_de_energia) :-
    personagem_aptidao(aura_impenetravel),
    personagem_nivel(N), N >= 12,
    personagem_aptidao_nivel(energia, A_N), A_N >= 4, !.
aptidao_requisito(aura_inofensiva) :-
    personagem_atributo(carisma, A), A >= 16, !.
aptidao_requisito(aura_controlada) :-
    personagem_atributo(destreza, A), A >= 16,
    personagem_pericia(furtividade, P), (P = proficiente; P = especialista), !.
aptidao_requisito(aura_comandante) :-
    personagem_atributo(carisma, A), A >= 16,
    personagem_nivel(N), N >= 8, !.
aptidao_requisito(aura_macica) :-
    personagem_atributo(constituicao, A), A >= 16, !.
aptidao_requisito(aura_chamativa) :-
    personagem_atributo(carisma, A), A >= 16, !.
aptidao_requisito(absorcao_elemental) :-
    personagem_aptidao(aura_elemental), !.
aptidao_requisito(aura_de_contencao) :-
    personagem_atributo(forca, A1), personagem_atributo(constituicao, A2),
    (A1 >= 15; A2 >= 15), !.
aptidao_requisito(aura_drenadora) :-
    personagem_nivel(N), N >= 6,
    personagem_aptidao_nivel(energia, A_N), A_N >= 2, !.
aptidao_requisito(aura_embacada) :-
    personagem_atributo(destreza, A), A >= 16, !.
aptidao_requisito(enganacao_projetada) :-
    personagem_atributo(destreza, A), A >= 18,
    personagem_nivel(N), N >= 4, !.
aptidao_requisito(aura_redirecionadora) :-
    personagem_atributo(destreza, A), A >= 16, !.
aptidao_requisito(aura_excessiva) :-
    personagem_aptidao(aura_reforcada),
    personagem_atributo(constituicao, A), A >= 16,
    personagem_nivel(N), N >= 8, !.
% Aptidões de Controle e Leitura
aptidao_requisito(canalizacao_avancada) :-
    personagem_aptidao(canalizar_em_golpe),
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 18; A2 >= 18),
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 2, !.
aptidao_requisito(canalizacao_maxima) :-
    personagem_aptidao(canalizar_avancada),
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 20; A2 >= 20),
    personagem_nivel(N), N >= 16,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 4, !.
aptidao_requisito(cobertura_avancada) :-
    personagem_aptidao(cobrir-se),
    personagem_nivel(N), N >= 10,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 2, !.
aptidao_requisito(projecao_avancada) :-
    personagem_aptidao(projetar_energia),
    personagem_atributo(destreza, A1), personagem_atributo(inteligencia, A2),
    (A1 >= 18; A2 >= 18),
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 2, !.
aptidao_requisito(projecao_maxima) :-
    personagem_aptidao(projecao_avancada),
    personagem_atributo(destreza, A1), personagem_atributo(inteligencia, A2),
    (A1 >= 20; A2 >= 20),
    personagem_nivel(N), N >= 16,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 4, !.
aptidao_requisito(projecao_dividida) :-
    personagem_aptidao(projecao_avancada),
    personagem_nivel(N), N >= 12,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 3, !.
aptidao_requisito(expandir_aura) :-
    personagem_nivel(N), N >= 6, !.
aptidao_requisito(estimulo_muscular_avancado) :-
    personagem_aptidao(estimulo_muscular),
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 18; A2 >= 18),
    personagem_nivel(N), N >= 4,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 2, !.
% Aptidões de Domínio
aptidao_requisito(dominio_simples) :-
    personagem_nivel(N), N >= 4, !.
aptidao_requisito(anular_tecnica) :-
    personagem_aptidao(dominio_simples),
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 3, !.
aptidao_requisito(espaco_em_batalha) :-
    personagem_aptidao(dominio_simples),
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 1, !.
aptidao_requisito(dominancia_absoluta) :-
    personagem_aptidao(espaco_em_batalha),
    personagem_nivel(N), N >= 12,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 3, !.
aptidao_requisito(expansao_de_dominio_incompleta) :-
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 2, !.
aptidao_requisito(expansao_de_dominio_completa) :-
    personagem_aptidao(tecnicas_de_barreira),
    personagem_aptidao(expansao_de_dominio_incompleta),
    personagem_nivel(N), N >= 10,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 3, !.
aptidao_requisito(acerto_garantido) :-
    personagem_aptidao(expansao_de_dominio_completa),
    personagem_pericia(feiticaria, P), (P = proficiente; P = especialista),
    personagem_nivel(N), N >= 14,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 4, !.
aptidao_requisito(expansao_de_dominio_sem_barreiras) :-
    personagem_aptidao(acerto_garantido),
    personagem_pericia(feiticaria, P), P = especialista,
    personagem_nivel(N), N >= 18,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 5, !.
aptidao_requisito(amplificacao_de_dominio) :-
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 2, !.
% Aptidões de Barreira
aptidao_requisito(barreira_rapida) :-
    personagem_aptidao(tecnicas_de_barreira),
    personagem_nivel(N), N >= 6,
    personagem_aptidao_nivel(barreira, A_N), A_N >= 2, !.
aptidao_requisito(barreira_imediata) :-
    personagem_aptidao(barreira_rapida),
    personagem_nivel(N), N >= 10,
    personagem_aptidao_nivel(barreira, A_N), A_N >= 3, !.
aptidao_requisito(cortina) :-
    personagem_aptidao(tecnicas_de_barreira), !.
% Aptidões de Energia Reversa
aptidao_requisito(energia_reversa) :-
    personagem_pericia(feiticaria, P), (P = proeficiente; P = especialista),
    personagem_nivel(N), N >= 8,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 3, !.
aptidao_requisito(liberacao_de_energia_reversa) :-
    personagem_aptidao(energia_reversa),
    personagem_nivel(N), N >= 10, !.
aptidao_requisito(cura_amplificada) :-
    personagem_aptidao(energia_reversa),
    personagem_nivel(N), N >= 12,
    personagem_aptidao_nivel(energia_reversa, A_N), A_N >= 3, !.
aptidao_requisito(cura_em_grupo) :-
    personagem_aptidao(liberacao_de_energia_reversa), !.
aptidao_requisito(canalizar_energia_reversa) :-
    personagem_aptidao(canalizar_em_golpe),
    personagem_aptidao(energia_reversa), !.
aptidao_requisito(fluxo_constante) :-
    personagem_aptidao(energia_reversa),
    personagem_nivel(N), N >= 12,
    personagem_aptidao_nivel(energia_reversa, A_N), A_N >= 3, !.
aptidao_requisito(regeneracao_aprimorada) :-
    personagem_aptidao(cura_amplificada),
    personagem_nivel(N), N >= 15,
    personagem_aptidao_nivel(energia_reversa, A_N), A_N >= 4, !.
% Aptidões Especiais
aptidao_requisito(raio_negro) :-
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 18; A2 >= 18),
    personagem_nivel(N), N >= 10,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 3, !.
aptidao_requisito(abencoado_pelas_faiscas_negras) :-
    personagem_aptidao(raio_negro),
    personagem_nivel(N), N >= 15,
    personagem_aptidao_nivel(controle_e_leitura, A_N1), A_N1 >= 4,
    personagem_aptidao_nivel(energia,            A_N2), A_N2 >= 3, !.
aptidao_requisito(reversao_de_tecnica) :-
    personagem_aptidao(energia_reversa),
    personagem_nivel(N), N >= 12, !.
aptidao_requisito(reversao_de_tecnica) :-
    personagem_pericia(feiticaria, P), (P = proeficiente; P = especialista),
    personagem_nivel(N), N >= 17, !. % Placeholder para usar técnicas nível 5

%% Aptidões exclusivas a maldições
% Aptidões de Anatomia
aptidao_requisito(absorcao_elemental) :-       % Possível conflito devido
                                               %  a nome
    personagem_aptidao(composicao_elemental),
    personagem_nivel(N), N >= 8, !.
aptidao_requisito(armas_naturais_aprimoradas) :-
    personagem_aptidao(armas_naturais),
    personagem_nivel(N), N >= 5, !.
aptidao_requisito(composicao_elemental) :-
    personagem_nivel(N), N >= 4, !.
aptidao_requisito(crescimento_corporal) :-
    personagem_nivel(N), N >= 5, !.
aptidao_requisito(desenvolvimento_fisico) :-
    personagem_nivel(N), N >= 4, !.
aptidao_requisito(revestimento) :-
    personagem_atributo(constituicao, A), A >= 14,
    personagem_nivel(N), N >= 4, !.
aptidao_requisito(revestimento_evoluido) :-
    personagem_atributo(constituicao, A), A >= 20,
    personagem_nivel(N), N >= 10, !.
aptidao_requisito(superioridade_fisica) :-
    personagem_pericia(luta, P), (P = proeficiente; P = especialista),
    personagem_nivel(N), N >= 5, !.
% Aptidões de Controle e Leitura
aptidao_requisito(absorcao_amaldicoada) :-
    personagem_pericia(feiticaria, P), (P = proeficiente; P = especialista), !.
aptidao_requisito(estoque_ampliado) :-
    personagem_nivel(N), N >= 10, !.
aptidao_requisito(extracao_de_potencial) :-
    personagem_nivel(N), N >= 5, !.
aptidao_requisito(protecao_constante) :-
    personagem_atributo(constituicao, A), A >= 20,
    personagem_nivel(N), N >= 10, !.
% Aptidões Especiais
aptidao_requisito(regeneracao_ampliada) :-
    personagem_aptidao(regeneracao_corporal),
    personagem_nivel(N), N >= 10, !.
aptidao_requisito(regeneracao_maxima) :-
    personagem_aptidao(regeneracao_ampliada),
    personagem_nivel(N), N >= 16, !.
aptidao_requisito(regeneracao_de_membros) :-
    personagem_aptidao(regeneracao_ampliada),
    personagem_nivel(N), N >= 12, !.
aptidao_requisito(area_de_dominio) :-
    personagem_pericia(feiticaria, P), (P = proeficiente; P = especialista),
    personagem_nivel(N), N >= 10, !.

% Valor padrão (Nenhum pré-requisito)
aptidao_requisito(_) :- true.
