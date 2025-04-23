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
aptidao(absorcao_elemental,         anatomia).
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
