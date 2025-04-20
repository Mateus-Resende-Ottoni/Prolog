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
% personagem_pericia(oficio,          proeficiente) :- !.
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
