%%%%%% Ficha de Customização %%%%%%

% Escudos do personagem
% personagem_escudo(Nome_do_escudo, Tipo_de_escudo, Grau_do_escudo).
% personagem_escudo_propriedades([Propriedades]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Lista de escudos
% escudo(Tipo_de_escudo, Bonus_CA, Penalidade_Destreza, Custo).
escudo(leve,     1,  0, 1).
escudo(pesado,   2, -1, 1).
escudo(colossal, 4, -2, 3).
escudo(pequeno,  1,  0, 2).

% Lista dos danos de ataques com escudos
% escudo_ataque(Tipo_de_escudo, Numero_de_dados, Tipo_de_dado).
escudo_ataque(leve,     1,  4).
escudo_ataque(pesado,   1,  6).
escudo_ataque(colossal, 1, 10).
escudo_ataque(pequeno,  1,  3).

%%%%%

% Lista de propriedades para escudos amaldiçoados

escudo_propriedade(espinhoso).
escudo_propriedade(destruidor).
escudo_propriedade(avassalador).
escudo_propriedade(isolante).
escudo_propriedade(reforcado).
