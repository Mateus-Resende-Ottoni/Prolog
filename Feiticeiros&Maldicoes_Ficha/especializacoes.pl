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

%%% Habilidades do Controlador

%%% Habilidades do Suporte

%%% Habilidades do Restringido
