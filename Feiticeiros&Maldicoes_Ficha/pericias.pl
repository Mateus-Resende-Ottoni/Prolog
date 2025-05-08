%%%%%% Ficha de Customização %%%%%%

%%%%%% Perícias
personagem_pericia(acrobacia,       proeficiente) :- !.
personagem_pericia(astucia,         nao_proeficiente) :- !.
personagem_pericia(atletismo,       especialista) :- !.
personagem_pericia(enganacao,       proeficiente) :- !.
personagem_pericia(feiticaria,      proeficiente) :- !.
personagem_pericia(fortitude,       proeficiente) :- !.
personagem_pericia(furtividade,     proeficiente) :- !.
personagem_pericia(historia,        proeficiente) :- !.
personagem_pericia(integridade,     proeficiente) :- !.
personagem_pericia(intimidacao,     proeficiente) :- !.
personagem_pericia(intuicao,        proeficiente) :- !.
personagem_pericia(investigacao,    proeficiente) :- !.
personagem_pericia(luta,            proeficiente) :- !.
personagem_pericia(medicina,        proeficiente) :- !.
personagem_pericia(ocultismo,       proeficiente) :- !.
personagem_pericia(percepcao,       proeficiente) :- !.
personagem_pericia(performance,     proeficiente) :- !.
personagem_pericia(persuasao,       proeficiente) :- !.
personagem_pericia(pontaria,        proeficiente) :- !.
personagem_pericia(prestidigitacao, proeficiente) :- !.
personagem_pericia(reflexos,        proeficiente) :- !.
personagem_pericia(religiao,        proeficiente) :- !.
personagem_pericia(vontade,         proeficiente) :- !.


%%Oficios
% personagem_pericia(oficio_alfaiate,    proeficiente) :- !.
% personagem_pericia(oficio_alquimia,    proeficiente) :- !.
% personagem_pericia(oficio_canalizacao, proeficiente) :- !.
% personagem_pericia(oficio_entalhe,     proeficiente) :- !.
% personagem_pericia(oficio_ferreiro,    proeficiente) :- !.
% personagem_pericia(oficio_medico,      proeficiente) :- !.
%%

% Complementares
% personagem_pericia(direcao,         proeficiente) :- !.
% personagem_pericia(sobrevivencia,   proeficiente) :- !.
% personagem_pericia(tecnologia,      proeficiente) :- !.


% Padrão
personagem_pericia(_,               nao_proeficiente).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%% Lista de atributos das perícias
pericia_atributo(acrobacia,       destreza).
pericia_atributo(astucia,         inteligencia).
pericia_atributo(atletismo,       forca).
pericia_atributo(enganacao,       carisma).
pericia_atributo(feiticaria,      inteligencia).
pericia_atributo(fortitude,       constituicao).
pericia_atributo(furtividade,     destreza).
pericia_atributo(historia,        inteligencia).
pericia_atributo(integridade,     constituicao).
pericia_atributo(intimidacao,     carisma).
pericia_atributo(intuicao,        sabedoria).
pericia_atributo(investigacao,    inteligencia).

% Luta é tanto de destreza quanto força
pericia_atributo(luta,            destreza) :-
    personagem_atributo(destreza, Destreza_Total),
    personagem_atributo(forca,    Forca_Total),
    Destreza_Total > Forca_Total, !.
pericia_atributo(luta,            forca).

pericia_atributo(medicina,        sabedoria).
pericia_atributo(ocultismo,       sabedoria).
pericia_atributo(percepcao,       sabedoria).
pericia_atributo(performance,     carisma).
pericia_atributo(persuasao,       carisma).

% Pontaria é tanto de destreza quanto força
pericia_atributo(pontaria,        destreza) :-
    personagem_atributo(destreza, Destreza_Total),
    personagem_atributo(forca,    Forca_Total),
    Destreza_Total > Forca_Total, !.
pericia_atributo(pontaria,        forca).

pericia_atributo(prestidigitacao, destreza).
pericia_atributo(reflexos,        destreza).
pericia_atributo(religiao,        inteligencia).
pericia_atributo(vontade,         sabedoria).

% Complementares
% pericia_atributo(direcao,         inteligencia) :- !.
% pericia_atributo(sobrevivencia,   sabedoria) :- !.
% pericia_atributo(tecnologia,      inteligencia) :- !.


%%%%% Cálculo de modificador de perícia
pericia_modificador(Pericia, Mod) :-
    pericia_atributo(Pericia, Atributo),
    personagem_atributo(Atributo, Total),
    modificador(Total, Mod_Atributo),
    personagem_nivel(Nivel),
    maestria(Nivel, Maestria_Mod),
    personagem_pericia(Pericia, Maestria),
    pericia_modificador_calc(Maestria, Maestria_Mod, Mod_Maestria),
    pericia_modificador_extra(Pericia, Mod_Extra),
    Mod is Mod_Atributo + (Nivel / 2) + Mod_Maestria + Mod_Extra.

%%% Cálculo de modificador de maestria de perícia
pericia_modificador_calc(especialista,     Maestria_Mod, Mod) :-
    Mod is Maestria_Mod * 2.
pericia_modificador_calc(proeficiente,     Maestria_Mod, Mod) :-
    Mod is Maestria_Mod * 1.
pericia_modificador_calc(nao_proeficiente, _           , Mod) :-
    Mod is 0.

%%% Bônus pertinentes a perícias específicas
% Acrobacia
pericia_modificador_extra(acrobacia, Extra) :- !,
    pericia_modificador_comum(acrobacia, B1),
    pericia_modificador_bonus(membros_extras, B2),
    % B3 _ Penalidade/Bônus de Uniforme
    % B4 _ Penalidade/Bônus de Escudo
    % B5 _ Arma com propriedade 'Balanceada'
    % B6 _ Uniforme com propriedade 'Marcial'
    pericia_modificador_bonus(treino_agilidade2, B7),
    Extra is B1 + B2 + B7.
% Astúcia
pericia_modificador_extra(astucia, Extra) :- !,
    pericia_modificador_comum(astucia, B1),
    pericia_modificador_bonus(energia_focalizada, astucia, B2),
    Extra is B1 + B2.
% Atletismo
pericia_modificador_extra(atletismo, Extra) :- !,
    pericia_modificador_comum(atletismo, B1),
    pericia_modificador_bonus(membros_extras, B2),
    % B3 _ Arma com propriedade 'Balanceada'
    % B4 _ Uniforme com propriedade 'Marcial'
    Extra is B1 + B2.
% Fortitude
pericia_modificador_extra(fortitude, Extra) :- !,
    pericia_modificador_comum(fortitude, B1),
    pericia_modificador_bonus(gosto_pela_luta, B2),
    pericia_modificador_bonus(energia_focalizada, fortitude, B3),
    pericia_modificador_bonus(treino_resistencia3, B4),
    Extra is B1 + B2 + B3 + B4.
% Furtividade
pericia_modificador_extra(furtividade, Extra) :- !,
    pericia_modificador_comum(furtividade, B1),
    pericia_modificador_bonus(mente_oculta, B2),
    pericia_modificador_bonus(presenca_suprimida, B3),
    % B4 _ Penalidade/Bônus de Uniforme
    % B5 _ Penalidade/Bônus de Escudo
    % B6 _ Arma com propriedade 'Discreta'
    pericia_modificador_bonus(tecnicas_de_ocultamento, B7),
    pericia_modificador_bonus(aura_controlada, B8),
    Extra is B1 + B2 + B3 + B7 + B8.
% Integridade
pericia_modificador_extra(integridade, Extra) :- !,
    pericia_modificador_comum(integridade, B1),
    pericia_modificador_bonus(segredos_do_artesao_da_alma, B2),
    pericia_modificador_bonus(alma_inquebravel, B3),
    Extra is B1 + B2 + B3.
% Intimidação
pericia_modificador_extra(intimidacao, Extra) :- !,
    pericia_modificador_comum(intimidacao, B1),
    % B2 _ Arma com propriedade 'imponente'
    Extra is B1.
% Percepção
pericia_modificador_extra(percepcao, Extra) :- !,
    pericia_modificador_comum(percepcao, B1),
    pericia_modificador_bonus(sentidos_agucados, B2),
    pericia_modificador_bonus(percepcao_agucada, B3),
    pericia_modificador_bonus(amuleto_do_vislumbre, B4),
    Extra is B1 + B2 + B3 + B4.
% Prestidigitação
pericia_modificador_extra(prestidigitacao, Extra) :- !,
    pericia_modificador_comum(prestidigitacao, B1),
    pericia_modificador_bonus(membros_extras, B2),
    % B3 _ Penalidade de Uniforme
    % B4 _ Penalidade/Bônus de Escudo
    Extra is B1 + B2.
% Reflexos
pericia_modificador_extra(reflexos, Extra) :- !,
    pericia_modificador_comum(reflexos, B1),
    pericia_modificador_bonus(energia_focalizada, reflexos, B2),
    % B3 _ Penalidade/Bônus de Uniforme
    % B4 _ Penalidade/Bônus de Escudo
    pericia_modificador_bonus(tecnicas_de_esquiva, B5),
    pericia_modificador_bonus(treino_agilidade4, B6),
    Extra is B1 + B2 + B5 + B6.
% Vontade
pericia_modificador_extra(vontade, Extra) :- !,
    pericia_modificador_comum(vontade, B1),
    pericia_modificador_bonus(energia_focalizada, vontade, B2),
    Extra is B1 + B2.
% Ofícios
pericia_modificador_extra(oficio_alfaiate, Extra) :- !,
    pericia_modificador_comum(oficio_alfaiate, B1),
    pericia_modificador_bonus(mestre_da_criacao, oficio_alfaiate, B2),
    Extra is B1 + B2.
pericia_modificador_extra(oficio_alquimia, Extra) :- !,
    pericia_modificador_comum(oficio_alquimia, B1),
    pericia_modificador_bonus(mestre_da_criacao, oficio_alquimia, B2),
    Extra is B1 + B2.
pericia_modificador_extra(oficio_canalizacao, Extra) :- !,
    pericia_modificador_comum(oficio_canalizacao, B1),
    pericia_modificador_bonus(mestre_da_criacao, oficio_canalizacao, B2),
    Extra is B1 + B2.
pericia_modificador_extra(oficio_entalhe, Extra) :- !,
    pericia_modificador_comum(oficio_entalhe, B1),
    pericia_modificador_bonus(mestre_da_criacao, oficio_entalhe, B2),
    Extra is B1 + B2.
pericia_modificador_extra(oficio_ferreiro, Extra) :- !,
    pericia_modificador_comum(oficio_ferreiro, B1),
    pericia_modificador_bonus(mestre_da_criacao, oficio_ferreiro, B2),
    Extra is B1 + B2.
pericia_modificador_extra(oficio_medico, Extra) :- !,
    pericia_modificador_comum(oficio_medico, B1),
    pericia_modificador_bonus(mestre_da_criacao, oficio_medico, B2),
    Extra is B1 + B2.

% Valor padrão
pericia_modificador_extra(Pericia, Extra) :-
    pericia_modificador_comum(Pericia, B1),
    Extra is B1.

% Bônus de perícia comum a todas
pericia_modificador_comum(Pericia, Bonus) :-
    pericia_modificador_bonus(corpo_especializado, Pericia, B1),
    pericia_modificador_bonus(expandir_repertorio, Pericia, B2),
    pericia_modificador_bonus(versatilidade, B3),
    pericia_modificador_bonus(treino_pericia1, Pericia, B4),
    pericia_modificador_bonus(treino_pericia3, Pericia, B5),
    Bonus is B1 + B2 + B3 + B4 + B5.

%% Para obter o valor de cada modificador
% Acrobacia
pericia_modificador_bonus(treino_agilidade2, Bonus) :-
    personagem_treino(_, _),
    personagem_treino(agilidade, 2), !,
    Bonus is 2.
% Fortitude
pericia_modificador_bonus(gosto_pela_luta, Bonus) :-
    personagem_nivel_especializacao(lutador, Nivel), Nivel >= 5, !,
    divisao_baixo(Nivel-1, 4, Bonus_Total), % Aumento nos níveis 9, 13 e 17
    limitar(Bonus_Total, 4, Bonus).
pericia_modificador_bonus(treino_resistencia3, Bonus) :-
    personagem_treino(_, _),
    personagem_treino(resistencia, 3), !,
    Bonus is 2.
% Furtividade
pericia_modificador_bonus(mente_oculta, Bonus) :-
    personagem_habilidade(_),
    personagem_habilidade(mente_oculta), !,
    personagem_modificador(sabedoria, Sabedoria_Mod),
    Bonus is Sabedoria_Mod.
pericia_modificador_bonus(presenca_suprimida, Bonus) :-
    personagem_habilidade(_),
    personagem_habilidade(presenca_suprimida), !,
    personagem_nivel_especializacao(especialista_em_combate, Nivel),
    divisao_baixo(Nivel-1, 4, Bonus_N),
    Bonus is 2 + Bonus_N.
pericia_modificador_bonus(tecnicas_de_ocultamento, Bonus) :-
    personagem_talento(_),
    personagem_talento(tecnicas_de_ocultamento), !,
    personagem_nivel(Nivel),
    maestria(Nivel, Maestria_Mod),
    personagem_pericia(furtividade, Maestria),
    pericia_modificador_calc(Maestria, Maestria_Mod, Mod_Maestria),
    Bonus is Mod_Maestria.
pericia_modificador_bonus(aura_controlada, Bonus) :-
    personagem_aptidao(_),
    personagem_aptidao(aura_controlada), !,
    Bonus is 3.
% Integridade
pericia_modificador_bonus(segredos_do_artesao_da_alma, Bonus) :-
    personagem_talento(_),
    personagem_talento(segredos_do_artesao_da_alma), !,
    personagem_nivel(Nivel),
    maestria(Nivel, Maestria_Mod),
    personagem_pericia(integridade, Maestria),
    pericia_modificador_calc(Maestria, Maestria_Mod, Mod_Maestria),
    Bonus is Mod_Maestria.
pericia_modificador_bonus(alma_inquebravel, Bonus) :-
    personagem_talento(_),
    personagem_talento(alma_inquebravel), !,
    Bonus is 5.
% Percepção
pericia_modificador_bonus(olhos_sombrios, Bonus) :-
    personagem_origem(feto_amaldicoado_hibrido),
    personagem_anatomia_caracteristica(_),
    personagem_anatomia_caracteristica(olhos_sombrios), !,
    personagem_nivel(Nivel), divisao_baixo(Nivel-1, 4, Bonus1),
    Bonus is 2 + Bonus1.
pericia_modificador_bonus(sentidos_agucados, Bonus) :-
    personagem_habilidade(_, _),
    personagem_habilidade(sentidos_agucados, Atributo),
    personagem_modificador(Atributo, Atributo_Mod),
    divisao_baixo(Atributo_Mod, 2, Bonus).
pericia_modificador_bonus(percepcao_agucada, Bonus) :-
    personagem_dadiva(_),
    personagem_dadiva(percepcao_agucada), !,
    Bonus is 3.
pericia_modificador_bonus(amuleto_do_vislumbre, Bonus) :-
    personagem_item(_),
    personagem_item(amuleto_do_vislumbre, Quant),
    Quant > 0, !,
    Bonus is 3.
% Reflexos
pericia_modificador_bonus(esquiva_sobre_humana, Bonus) :-
    personagem_origem(restringido), !,
    personagem_nivel_especializacao(restringido, Nivel),
    % Valor padrão de 1, e aumenta em 1 nos níveis 9 e 16
    floor(Nivel/9,  Auxiliar1), limitar(Auxiliar1, 1, Bonus1),
    floor(Nivel/16, Auxiliar2), limitar(Auxiliar2, 1, Bonus2),
    Bonus is 1 + Bonus1 + Bonus2.
pericia_modificador_bonus(tecnicas_de_esquiva, Bonus) :-
    personagem_talento(_),
    personagem_talento(tecnicas_de_esquiva), !,
    Bonus is 2.
pericia_modificador_bonus(treino_agilidade4, Bonus) :-
    personagem_treino(_, _),
    personagem_treino(agilidade, 4), !,
    Bonus is 2.
% Genéricos / Afeta >1 perícia
pericia_modificador_bonus(membros_extras, Bonus) :-
    personagem_origem(feto_amaldicoado_hibrido),
    personagem_anatomia_caracteristica(_, _),
    personagem_anatomia_caracteristica(membros_extras, bracos), !,
    Bonus is 2.
pericia_modificador_bonus(versatilidade, Bonus) :-
    personagem_habilidade(_),
    personagem_habilidade(versatilidade), !,
    personagem_nivel(Nivel),
    floor(Nivel/10, Auxiliar1), limitar(Auxiliar1, 1, Bonus1),
    Bonus is 1 + Bonus1.

% Valor padrão
pericia_modificador_bonus(_, 0).

% Testes de resistência
pericia_modificador_bonus(energia_focalizada, Teste, Bonus) :-
    personagem_habilidade(_, _, _),
    personagem_habilidade(energia_focalizada, Teste, Atributo), !,
    personagem_modificador(Atributo, Bonus).
% Ofícios
pericia_modificador_bonus(mestre_da_criacao, Oficio, Bonus) :-
    personagem_talento(_, _),
    personagem_talento(mestre_da_criacao, Oficio), !,
    Bonus is 3.
% Genéricos
pericia_modificador_bonus(corpo_especializado, Pericia, Bonus) :-
    personagem_origem(feto_amaldicoado_hibrido),
    personagem_anatomia_caracteristica(_, _),
    personagem_anatomia_caracteristica(corpo_especializado, Pericia), !,
    personagem_nivel(Nivel),
    dividir_baixo(Nivel, 10, Auxiliar1), limitar(Auxiliar1, 2, Bonus1),
    Bonus is 2 + Bonus1.
pericia_modificador_bonus(expandir_repertorio, Pericia, Bonus) :-
    personagem_habilidade(_, _),
    personagem_habilidade(expandir_repertorio, Pericia), !,
    Bonus is 2.
pericia_modificador_bonus(treino_pericia1, Pericia, Bonus) :-
    personagem_treino(_, _, _),
    personagem_treino(pericia, Pericia, 1), !,
    Bonus is 1.
pericia_modificador_bonus(treino_pericia3, Pericia, Bonus) :-
    personagem_treino(_, _, _),
    personagem_treino(pericia, Pericia, 3), !,
    Bonus is 2.
pericia_modificador_bonus(_, _, 0).
