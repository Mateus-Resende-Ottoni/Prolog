%%%%%% Ficha de Customização %%%%%%

% Lista de treinamentos realizados pelo personagem
% Todas etapas são listadas separadamente
% O treino completo é inferido pela quarta etapa
% personagem_treino(Nome_do_treino, Etapa_realizada)
% Alguns treinos especificam o que eles afetam, como o de pericia.
%  Nesses casos, use esse modelo:
% personagem_treino(Nome_do_treino, O_que_é_afetado, Etapa_realizada)
personagem_treino(agilidade, 1).
personagem_treino(agilidade, 2).

personagem_treino(barreiras, 1).

personagem_treino(pericia,   feiticaria, 1).
personagem_treino(pericia,   feiticaria, 2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%% Lista das linhas de treinamento
treino(agilidade).
treino(barreiras).
treino(compreensao).
treino(controle_de_energia).
treino(dominios).
treino(energia_reversa).
treino(luta).
treino(manejo_de_arma).
treino(pericia).
treino(potencial_fisico).
treino(resistencia).

%%%%% Lista de pré-requisitos para treinamentos
% treino_requisito(Treino, Etapa)
treino_requisito(agilidade, 3) :- !,
    personagem_atributo(destreza, A), A >= 14.
treino_requisito(agilidade, 4) :- !,
    personagem_atributo(destreza, A), A >= 16.

treino_requisito(barreiras, 3) :- !,
    personagem_aptidao_nivel(barreira, A_N), A_N >= 2.
treino_requisito(barreiras, 4) :- !,
    personagem_aptidao_nivel(barreira, A_N), A_N >= 3.

treino_requisito(compreensao, 3) :- !,
    personagem_aptidao_nivel(energia, A_N), A_N >= 2.
treino_requisito(compreensao, 4) :- !,
    personagem_aptidao_nivel(energia, A_N), A_N >= 3.

treino_requisito(controle_de_energia, 3) :- !,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 2.
treino_requisito(controle_de_energia, 4) :- !,
    personagem_aptidao_nivel(controle_e_leitura, A_N), A_N >= 3.

treino_requisito(dominios, 3) :- !,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 2.
treino_requisito(dominios, 4) :- !,
    personagem_aptidao_nivel(dominio, A_N), A_N >= 3.

treino_requisito(energia_reversa, 1) :- !,
    personagem_aptidao(energia_reversa).
treino_requisito(energia_reversa, 2) :- !,
    personagem_aptidao(energia_reversa).
treino_requisito(energia_reversa, 3) :- !,
    personagem_aptidao(energia_reversa),
    personagem_aptidao_nivel(energia_reversa, A_N), A_N >= 2.
treino_requisito(energia_reversa, 4) :- !,
    personagem_aptidao(energia_reversa),
    personagem_aptidao_nivel(energia_reversa, A_N), A_N >= 3.

treino_requisito(luta, 3) :- !,
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 14; A2 >= 14).
treino_requisito(luta, 4) :- !,
    personagem_atributo(forca, A1), personagem_atributo(destreza, A2),
    (A1 >= 16; A2 >= 16).

treino_requisito(resistencia, 3) :- !,
    personagem_atributo(constituicao, A), A >= 14.
treino_requisito(resistencia, 4) :- !,
    personagem_atributo(constituicao, A), A >= 16.


% Valor padrão (Nenhum pré-requisito)
treino_requisito(_, _) :- true.
