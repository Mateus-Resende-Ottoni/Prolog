%%%%%% Ficha de Customização %%%%%%

%%% Especialização(ões) do personagem
personagem_especializacao(especialista_em_tecnica).

% Atributos usados por classe
personagem_atributo_tecnica(especialista_em_tecnica, inteligencia).

%%% Especialização do primeiro nivel do personagem
personagem_primeiro_nivel(especialista_em_tecnica).

%%% Nível do personagem em cada especialização
personagem_nivel_especializacao(especialista_em_tecnica, 1) :- !.
% Valor padrão para indicar que os restantes são nível 0
personagem_nivel_especializacao(_, 0).

%%% Habilidades de especializações
personagem_habilidade(reacao_rapida, inteligencia).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%
% Lista de especializações
especializacao(lutador).
especializacao(especialista_em_combate).
especializacao(especialista_em_tecnica).
especializacao(controlador).
especializacao(suporte).
especializacao(restringido).
%%%%%
% Lista de Pontos de Vida no primeiro nível
especializacao_pv1(lutador,                 12).
especializacao_pv1(especialista_em_combate, 12).
especializacao_pv1(especialista_em_tecnica, 10).
especializacao_pv1(controlador,             10).
especializacao_pv1(suporte,                 10).
especializacao_pv1(restringido,             16).
%%%%%
% Lista de Pontos de Vida padrão por nível
especializacao_pv(lutador,                 6).
especializacao_pv(especialista_em_combate, 6).
especializacao_pv(especialista_em_tecnica, 5).
especializacao_pv(controlador,             5).
especializacao_pv(suporte,                 5).
especializacao_pv(restringido,             7).
%%%%%
% Lista de Pontos de Energia no primeiro nível
% Especialista em Técnica, Controlador e Suporte ganham energia bônus
%  com base nos seus atributos de técnica
especializacao_pe1(lutador,                 4).
especializacao_pe1(especialista_em_combate, 4).
especializacao_pe1(especialista_em_tecnica, 6).
especializacao_pe1(controlador,             5).
especializacao_pe1(suporte,                 5).
especializacao_pe1(restringido,             0).
%%%%%
% Lista de Pontos de Energia por nível
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

%%%%% Listas de habilidades de especializações
%%% Habilidades do Lutador
especializacao_habilidade(lutador, aparar_projeteis).
especializacao_habilidade(lutador, ataque_inconsequente).
especializacao_habilidade(lutador, acao_agil).
especializacao_habilidade(lutador, caminho_da_mao_vazia).
especializacao_habilidade(lutador, complementacao_marcial).
especializacao_habilidade(lutador, deboche_desconcertante).
especializacao_habilidade(lutador, defesa_marcial).
especializacao_habilidade(lutador, empolgar_se).
especializacao_habilidade(lutador, esquiva_rapida).
especializacao_habilidade(lutador, finta_melhorada).
especializacao_habilidade(lutador, foguete_sem_re).
especializacao_habilidade(lutador, impacto_misto).
especializacao_habilidade(lutador, imprudencia_motivadora).
especializacao_habilidade(lutador, manobras_finalizadoras).
especializacao_habilidade(lutador, musculus_desenvolvidos).
especializacao_habilidade(lutador, puxar_um_ar).
especializacao_habilidade(lutador, rebater).
especializacao_habilidade(lutador, redirecionar_forca).
especializacao_habilidade(lutador, resistir).
especializacao_habilidade(lutador, sobrevivente).
especializacao_habilidade(lutador, voadora).
especializacao_habilidade(lutador, atacar_e_recuar).
especializacao_habilidade(lutador, brutalidade).
especializacao_habilidade(lutador, dedicacao_em_arma).
especializacao_habilidade(lutador, devolver_projeteis).
especializacao_habilidade(lutador, fluxo).
especializacao_habilidade(lutador, furia_da_vinganca).
especializacao_habilidade(lutador, segura_pra_mim).
especializacao_habilidade(lutador, ignorar_dor).
especializacao_habilidade(lutador, ataque_extra).
especializacao_habilidade(lutador, brutalidade_sanguinaria).
especializacao_habilidade(lutador, corpo_calejado).
especializacao_habilidade(lutador, eliminar_e_continuar).
especializacao_habilidade(lutador, golpe_da_mao_aberta).
especializacao_habilidade(lutador, oportunista).
especializacao_habilidade(lutador, redirecionar_ataque).
especializacao_habilidade(lutador, um_com_a_arma).
especializacao_habilidade(lutador, alma_quieta).
especializacao_habilidade(lutador, aptidoes_de_luta).
especializacao_habilidade(lutador, brutalidade_aprimorada).
especializacao_habilidade(lutador, corpo_sincronizado).
especializacao_habilidade(lutador, mente_em_paz).
especializacao_habilidade(lutador, ataques_ressoantes).
especializacao_habilidade(lutador, insistencia).
especializacao_habilidade(lutador, punhos_letais).
especializacao_habilidade(lutador, rebater_e_golpear).
especializacao_habilidade(lutador, armas_absolutas).
especializacao_habilidade(lutador, empolgacao_maxima).
especializacao_habilidade(lutador, corpo_supremo).

%%% Habilidades do Especialista em Combate
especializacao_habilidade(especialista_em_combate, arremessos_potentes).
especializacao_habilidade(especialista_em_combate, arremessos_rapido).
especializacao_habilidade(especialista_em_combate, assumir_postura).
especializacao_habilidade(especialista_em_combate, compensar_erro).
especializacao_habilidade(especialista_em_combate, disparos_sincronizados).
especializacao_habilidade(especialista_em_combate, erguer_guarda).
especializacao_habilidade(especialista_em_combate, escudeiro_agressivo).
especializacao_habilidade(especialista_em_combate, especialista_em_escudos).
especializacao_habilidade(especialista_em_combate, estilo_proprio).
especializacao_habilidade(especialista_em_combate, extensao_do_corpo).
especializacao_habilidade(especialista_em_combate, flanqueador_superior).
especializacao_habilidade(especialista_em_combate, golpe_falso).
especializacao_habilidade(especialista_em_combate, guarda_estudada).
especializacao_habilidade(especialista_em_combate, indomavel).
especializacao_habilidade(especialista_em_combate, inovar_estilo).
especializacao_habilidade(especialista_em_combate, mente_oculta).
especializacao_habilidade(especialista_em_combate, posicionamento_ameacador).
especializacao_habilidade(especialista_em_combate, precisao_definitiva).
especializacao_habilidade(especialista_em_combate, preparo_imediato).
especializacao_habilidade(especialista_em_combate, presenca_suprimida).
especializacao_habilidade(especialista_em_combate, revigorar).
especializacao_habilidade(especialista_em_combate, tiro_falso).
especializacao_habilidade(especialista_em_combate, zona_de_risco).
especializacao_habilidade(especialista_em_combate, defender_e_revidar).
especializacao_habilidade(especialista_em_combate, acervo_amplo).
especializacao_habilidade(especialista_em_combate, aprender_postura).
especializacao_habilidade(especialista_em_combate, artes_do_combate_tecnicas_de_avanco).
especializacao_habilidade(especialista_em_combate, buscar_oportunidade).
especializacao_habilidade(especialista_em_combate, espirito_de_luta).
especializacao_habilidade(especialista_em_combate, grupo_favorito).
especializacao_habilidade(especialista_em_combate, recarga_rapida).
especializacao_habilidade(especialista_em_combate, uso_rapido).
especializacao_habilidade(especialista_em_combate, emboscada).
especializacao_habilidade(especialista_em_combate, fluxo_perfeito).
especializacao_habilidade(especialista_em_combate, olhos_de_aguia).
especializacao_habilidade(especialista_em_combate, ataque_extra).
especializacao_habilidade(especialista_em_combate, critico_melhorado).
especializacao_habilidade(especialista_em_combate, critico_potente).
especializacao_habilidade(especialista_em_combate, golpes_potentes).
especializacao_habilidade(especialista_em_combate, manejo_especial).
especializacao_habilidade(especialista_em_combate, marcar_inimigo).
especializacao_habilidade(especialista_em_combate, mira_destrutiva).
especializacao_habilidade(especialista_em_combate, preparacao_rapida).
especializacao_habilidade(especialista_em_combate, aptidoes_de_combate).
especializacao_habilidade(especialista_em_combate, artes_do_combate_tecnicas_da_forca).
especializacao_habilidade(especialista_em_combate, espirito_incansavel).
especializacao_habilidade(especialista_em_combate, surto_de_acao).
especializacao_habilidade(especialista_em_combate, analise_acelerada).
especializacao_habilidade(especialista_em_combate, assassinar).
especializacao_habilidade(especialista_em_combate, ataque_concentrado).
especializacao_habilidade(especialista_em_combate, chuva_de_arremessos).
especializacao_habilidade(especialista_em_combate, potencia_antes_de_cair).
especializacao_habilidade(especialista_em_combate, artes_do_combate_tecnicas_de_saque).
especializacao_habilidade(especialista_em_combate, manejo_unico).
especializacao_habilidade(especialista_em_combate, critico_aperfeicoado).
especializacao_habilidade(especialista_em_combate, mestre_da_postura).

%%% Habilidades do Especialista em Técnica
especializacao_habilidade(especialista_em_tecnica, abastecido_pelo_sangue).
especializacao_habilidade(especialista_em_tecnica, almejando_o_impossivel).
especializacao_habilidade(especialista_em_tecnica, ate_a_ultima_gota).
especializacao_habilidade(especialista_em_tecnica, bastiao_interior).
especializacao_habilidade(especialista_em_tecnica, conhecimento_aplicado).
especializacao_habilidade(especialista_em_tecnica, conjuracao_defensiva).
especializacao_habilidade(especialista_em_tecnica, correcao).
especializacao_habilidade(especialista_em_tecnica, determinacao_energizada).
especializacao_habilidade(especialista_em_tecnica, economia_de_energia).
especializacao_habilidade(especialista_em_tecnica, explosao_encadeada).
especializacao_habilidade(especialista_em_tecnica, energia_focalizada).
especializacao_habilidade(especialista_em_tecnica, energia_inacabavel).
especializacao_habilidade(especialista_em_tecnica, habilidade_favorita).
especializacao_habilidade(especialista_em_tecnica, habilidades_refinadas).
especializacao_habilidade(especialista_em_tecnica, incapaz_de_falhar).
especializacao_habilidade(especialista_em_tecnica, mente_placida).
especializacao_habilidade(especialista_em_tecnica, mente_repartida).
especializacao_habilidade(especialista_em_tecnica, movimentos_imprevisiveis).
especializacao_habilidade(especialista_em_tecnica, nova_habilidade).
especializacao_habilidade(especialista_em_tecnica, passo_rapido).
especializacao_habilidade(especialista_em_tecnica, pertubacao_amaldicoada).
especializacao_habilidade(especialista_em_tecnica, preparacao_de_tecnicas).
especializacao_habilidade(especialista_em_tecnica, reacao_rapida).
especializacao_habilidade(especialista_em_tecnica, reforco_amaldicoado).
especializacao_habilidade(especialista_em_tecnica, resistencia_elemental).
especializacao_habilidade(especialista_em_tecnica, sobrecarregar).
especializacao_habilidade(especialista_em_tecnica, tecnicas_de_combate).
especializacao_habilidade(especialista_em_tecnica, zelo_recompensador).
especializacao_habilidade(especialista_em_tecnica, epifania_amaldicoada).
especializacao_habilidade(especialista_em_tecnica, explosao_defensiva).
especializacao_habilidade(especialista_em_tecnica, olhar_preciso).
especializacao_habilidade(especialista_em_tecnica, sacrificio_pela_energia).
especializacao_habilidade(especialista_em_tecnica, versatilidade_em_fundamentos).
especializacao_habilidade(especialista_em_tecnica, agilidade_no_campo_de_batalha).
especializacao_habilidade(especialista_em_tecnica, combate_amaldicoado).
especializacao_habilidade(especialista_em_tecnica, dominancia_em_habilidade).
especializacao_habilidade(especialista_em_tecnica, elevar_aptidao).
especializacao_habilidade(especialista_em_tecnica, especializacao).
especializacao_habilidade(especialista_em_tecnica, expansao_dos_fundamentos).
especializacao_habilidade(especialista_em_tecnica, imbuir_com_tecnica).
especializacao_habilidade(especialista_em_tecnica, nivel_perfeito).
especializacao_habilidade(especialista_em_tecnica, fisico_amaldicoado).
especializacao_habilidade(especialista_em_tecnica, primeiro_disparado).
especializacao_habilidade(especialista_em_tecnica, economia_de_energia_avancada).
especializacao_habilidade(especialista_em_tecnica, revestimento_constante).
especializacao_habilidade(especialista_em_tecnica, sentidos_agucados).
especializacao_habilidade(especialista_em_tecnica, manipulacao_perfeita).

%%% Habilidades do Controlador
especializacao_habilidade(controlador, acao_corretiva).
especializacao_habilidade(controlador, camuflagem_mesclada).
especializacao_habilidade(controlador, chamado_destruidor).
especializacao_habilidade(controlador, colecionador).
especializacao_habilidade(controlador, compaheiro_amaldicoado).
especializacao_habilidade(controlador, critico_brutal).
especializacao_habilidade(controlador, domador_de_maldicoes).
especializacao_habilidade(controlador, dor_partilhada).
especializacao_habilidade(controlador, emprestimo_amaldicoado).
especializacao_habilidade(controlador, especializar_invocacao).
especializacao_habilidade(controlador, flanco).
especializacao_habilidade(controlador, frenesi_da_invocacao).
especializacao_habilidade(controlador, guarda_viva).
especializacao_habilidade(controlador, invocacoes_economicas).
especializacao_habilidade(controlador, invocacoes_moveis).
especializacao_habilidade(controlador, invocacoes_resistentes).
especializacao_habilidade(controlador, melhoria_de_controlador).
especializacao_habilidade(controlador, mesclar_corpos_amaldicoados).
especializacao_habilidade(controlador, otimizacao_de_energia).
especializacao_habilidade(controlador, presenca_imponente).
especializacao_habilidade(controlador, proteger_invocacao).
especializacao_habilidade(controlador, quimera).
especializacao_habilidade(controlador, rede_de_deteccao).
especializacao_habilidade(controlador, troca_imediata).
especializacao_habilidade(controlador, visionario).
especializacao_habilidade(controlador, companheiro_amaldicoado_avancado).
especializacao_habilidade(controlador, invocacao_as).
especializacao_habilidade(controlador, protecao_avancada_de_invocacao).
especializacao_habilidade(controlador, resistencia_sobrecarregada).
especializacao_habilidade(controlador, acompanhamento_amaldicoado).
especializacao_habilidade(controlador, ataque_em_conjunto).
especializacao_habilidade(controlador, autonomia).
especializacao_habilidade(controlador, concentrar_poder).
especializacao_habilidade(controlador, invocacao_parcial).
especializacao_habilidade(controlador, saida_de_emergencia).
especializacao_habilidade(controlador, agilidade_no_campo_de_batalha).
especializacao_habilidade(controlador, flanco_avancado).
especializacao_habilidade(controlador, aptidoes_de_controle).
especializacao_habilidade(controlador, golpes_ageis).
especializacao_habilidade(controlador, tecnicas_de_oportunidade).
especializacao_habilidade(controlador, fantoche_supremo).
especializacao_habilidade(controlador, critico_aprimorado).
especializacao_habilidade(controlador, mestre_do_controle).

%%% Habilidades do Suporte

%%% Habilidades do Restringido
