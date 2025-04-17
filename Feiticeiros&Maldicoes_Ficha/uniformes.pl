%%%%%% Ficha de Customização %%%%%%

% Uniforme do personagem
% personagem_uniforme(Tipo_de_uniforme, Grau_do_uniforme).
% personagem_uniforme_propriedades([Propriedades]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Lista de uniformes
% uniforme(Tipo_de_uniforme, Bonus_CA, Penalidade_Destreza, Custo).
uniforme(revestimento_leve,    2,  0, 1).
uniforme(revestimento_medio,   4, -2, 2).
uniforme(revestimento_robusto, 6, -4, 3).
uniforme(sob_medida,           1,  2, 2).

%%%%%

% Lista de propriedades para uniformes amaldiçoados

uniforme_propriedade(ajustado).
uniforme_propriedade(revestido_com_espinhos).
uniforme_propriedade(blindado).
uniforme_propriedade(distorcivo).
uniforme_propriedade(escaldante).
uniforme_propriedade(estimulante).
uniforme_propriedade(furtivo).
uniforme_propriedade(marcial).
uniforme_propriedade(propulsor).
uniforme_propriedade(repulsor).
uniforme_propriedade(resiliente).
uniforme_propriedade(ricochete).
