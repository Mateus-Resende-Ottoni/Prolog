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

%%%%% Listas de habilidades base de especializações
%%% Habilidades base do Lutador
especializacao_habilidade_base(lutador, mestre_da_luta).
especializacao_habilidade_base(lutador, empolgacao).
especializacao_habilidade_base(lutador, reflexo_evasivo).
especializacao_habilidade_base(lutador, gosto_pela_luta).
especializacao_habilidade_base(lutador, lutador_superior).

%%% Habilidades base do Especialista em Combate
especializacao_habilidade_base(especialista_em_combate, repertorio_do_especialista).
especializacao_habilidade_base(especialista_em_combate, arte_do_combate).
especializacao_habilidade_base(especialista_em_combate, golpe_especial).
especializacao_habilidade_base(especialista_em_combate, renovacao_pelo_sangue).
especializacao_habilidade_base(especialista_em_combate, autossuficiente).

%%% Habilidades base do Especialista em Técnica
especializacao_habilidade_base(especialista_em_tecnica, dominio_dos_fundamentos).
especializacao_habilidade_base(especialista_em_tecnica, conjuracao_aprimorada).
especializacao_habilidade_base(especialista_em_tecnica, adiantar_a_evolucao).
especializacao_habilidade_base(especialista_em_tecnica, foco_amaldicoado).
especializacao_habilidade_base(especialista_em_tecnica, o_honrado).

%%% Habilidades base do Controlador
especializacao_habilidade_base(controlador, treinamento_em_controle).
especializacao_habilidade_base(controlador, reserva_para_invocacao).
especializacao_habilidade_base(controlador, companhia_libertadora).
especializacao_habilidade_base(controlador, apogeu).
especializacao_habilidade_base(controlador, apice_do_controle).

%%% Habilidades base do Suporte
especializacao_habilidade_base(suporte, suporte_em_combate).
especializacao_habilidade_base(suporte, presenca_inspiradora).
especializacao_habilidade_base(suporte, versatilidade).
especializacao_habilidade_base(suporte, medicina_infalivel).
especializacao_habilidade_base(suporte, mestre_curandeiro).

%%% Habilidades base do Restringido
especializacao_habilidade_base(restringido, restrito_pelos_ceus).
especializacao_habilidade_base(restringido, ataque_furtivo).
especializacao_habilidade_base(restringido, esquiva_sobre_humana).
especializacao_habilidade_base(restringido, restricao_definitiva).
especializacao_habilidade_base(restringido, libertacao_do_destino).

%%%% Lista com opções de escolhas em habilidades base que possuem tais.
%% Lutador
manobra(ajuste).
manobra(comando).
manobra(desarme).
manobra(esquiva).
manobra(trabalho_de_pes).

%% Especialista em Combate
estilo_de_combate(estilo_defensivo).
estilo_de_combate(estilo_do_arremessador).
estilo_de_combate(estilo_do_duelista).
estilo_de_combate(estilo_do_interceptador).
estilo_de_combate(estilo_do_protetor).
estilo_de_combate(estilo_distante).
estilo_de_combate(estilo_duplo).
estilo_de_combate(estilo_massivo).

arte_de_combate(arremesso_agil).
arte_de_combate(distracao_letal).
arte_de_combate(execucao_silenciosa).
arte_de_combate(golpe_descendente).
arte_de_combate(investida_imediata).

golpe_especial(sanguinario).
golpe_especial(longo).
golpe_especial(elemental).
golpe_especial(letal).
golpe_especial(penetrante).
golpe_especial(preciso).
golpe_especial(impactante).
golpe_especial(amplo).
golpe_especial(lento).
golpe_especial(sacrificio).
golpe_especial(desfocado).

%% Especialista em Técnica
mudanca_de_fundamento(tecnica_cruel).
mudanca_de_fundamento(tecnica_cuidadosa).
mudanca_de_fundamento(tecnica_distante).
mudanca_de_fundamento(tecnica_duplicada).
mudanca_de_fundamento(tecnica_potente).
mudanca_de_fundamento(tecnica_precisa).
mudanca_de_fundamento(tecnica_rapida).

foco_amaldicoado(destruicao).
foco_amaldicoado(economia).
foco_amaldicoado(refino).

%% Controlador
apogeu(controle_concentrado).
apogeu(controle_disperso).
apogeu(controle_sintonizado).

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
especializacao_habilidade(suporte, analise_profunda).
especializacao_habilidade(suporte, apoiar_e_atacar).
especializacao_habilidade(suporte, apoiar_e_curar).
especializacao_habilidade(suporte, apoio_defensivo).
especializacao_habilidade(suporte, apoio_superior).
especializacao_habilidade(suporte, conceder_outra_chance).
especializacao_habilidade(suporte, comando_motivador).
especializacao_habilidade(suporte, contaminar_com_determinacao).
especializacao_habilidade(suporte, contra_ataque).
especializacao_habilidade(suporte, cura_aperfeicoada).
especializacao_habilidade(suporte, expandir_repertorio).
especializacao_habilidade(suporte, fisico_controlado).
especializacao_habilidade(suporte, inimigo_comum).
especializacao_habilidade(suporte, interferencia).
especializacao_habilidade(suporte, intervencao).
especializacao_habilidade(suporte, letalidade_cirurgica).
especializacao_habilidade(suporte, mobilidade_avancada).
especializacao_habilidade(suporte, negacao_critica).
especializacao_habilidade(suporte, olhar_agucado).
especializacao_habilidade(suporte, otimizacao_de_espaco).
especializacao_habilidade(suporte, posicionamento_estrategico).
especializacao_habilidade(suporte, pronto_para_agir).
especializacao_habilidade(suporte, protetor).
especializacao_habilidade(suporte, sintonizacao_vital).
especializacao_habilidade(suporte, transmitir_conhecimento).
especializacao_habilidade(suporte, troca_rapida).
especializacao_habilidade(suporte, agilidade_no_campo_de_batalha).
especializacao_habilidade(suporte, cobrir_aliado).
especializacao_habilidade(suporte, cura_avancada_em_grupo).
especializacao_habilidade(suporte, inspirar_aliados).
especializacao_habilidade(suporte, pre_analise).
especializacao_habilidade(suporte, recompensa_pelo_sucesso).
especializacao_habilidade(suporte, descarga_reanimadora).
especializacao_habilidade(suporte, devolver_na_mesma_moeda).
especializacao_habilidade(suporte, incitar_vigor).
especializacao_habilidade(suporte, ajustes_em_equipamentos).
especializacao_habilidade(suporte, aptidoes_de_suporte).
especializacao_habilidade(suporte, criar_medicina).
especializacao_habilidade(suporte, elevar_sucesso).
especializacao_habilidade(suporte, motivacao_pelo_triunfo).
especializacao_habilidade(suporte, necessidade_de_continuar).
especializacao_habilidade(suporte, taticas_defensivas).
especializacao_habilidade(suporte, comando_transcendente).
especializacao_habilidade(suporte, sobrecura).
especializacao_habilidade(suporte, reacao_necessaria).
especializacao_habilidade(suporte, purificacao_da_alma).

%%% Habilidades do Restringido
especializacao_habilidade(restringido, ainda_de_pe).
especializacao_habilidade(restringido, aproximacao_instintiva).
especializacao_habilidade(restringido, ataque_inconsequente).
especializacao_habilidade(restringido, camuflagem_aprimorada).
especializacao_habilidade(restringido, destruir_equipamento).
especializacao_habilidade(restringido, finta_rapida).
especializacao_habilidade(restringido, foco_no_inimigo).
especializacao_habilidade(restringido, golpes_desequilibrantes).
especializacao_habilidade(restringido, imitacao).
especializacao_habilidade(restringido, maldicao_companheira).
especializacao_habilidade(restringido, manejo_superior).
especializacao_habilidade(restringido, mesmo_morto).
especializacao_habilidade(restringido, ponto_cego).
especializacao_habilidade(restringido, precisao_forcada).
especializacao_habilidade(restringido, punhos_destruidores).
especializacao_habilidade(restringido, roubo_de_habilidade).
especializacao_habilidade(restringido, surote_de_adrenalina).
especializacao_habilidade(restringido, valorizar_invocacao).
especializacao_habilidade(restringido, versatilidade).
especializacao_habilidade(restringido, resiliencia_pela_adrenalina).
especializacao_habilidade(restringido, ataque_inconsequente_aprimorado).
especializacao_habilidade(restringido, frenesi).
especializacao_habilidade(restringido, perceber_o_ar).
especializacao_habilidade(restringido, tecnicas_de_memorizacao).
especializacao_habilidade(restringido, adrenalina_intensificadora).
especializacao_habilidade(restringido, cacador_de_feiticeiros).
especializacao_habilidade(restringido, desenvolver_ideias).
especializacao_habilidade(restringido, corpo_de_aco).
especializacao_habilidade(restringido, disparada_trovejante).
especializacao_habilidade(restringido, ataque_extra).
especializacao_habilidade(restringido, barreira_inamovivel).
especializacao_habilidade(restringido, forca_imparavel).
especializacao_habilidade(restringido, reacao_rapida).
especializacao_habilidade(restringido, imitacao_perfeita).
especializacao_habilidade(restringido, presenca_ameacadora).
especializacao_habilidade(restringido, respeito_celeste).
especializacao_habilidade(restringido, assassinar).
especializacao_habilidade(restringido, mente_limpa).
especializacao_habilidade(restringido, retaliacao).
especializacao_habilidade(restringido, adrenalina_absoluta).
especializacao_habilidade(restringido, apice_corporal_humano).
