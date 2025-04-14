%%%%%% Ficha de Customização %%%%%%

% Armas do personagem
% personagem_arma(Nome_da_arma, Grau_da_arma).
% personagem_arma_propriedades([Propriedades]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lista de armas
% arma(Tipo, Numero_de_dados, Tipo_de_dado, Critico, [Propriedades],
% Tipo_de_dano, Grupo_de_arma, custo).
arma(adaga,         1,  4, 18, [a,       f, l, m                   ], perfurante, faca,   1).
arma(bastao,        1,  6, 20, [               m,       v          ], impacto,    bastao, 1).

arma(lanca,         1,  6, 19, [a,    e,                v          ], perfurante, haste,  1).

arma(arco_curto,    1,  6, 20, [   d                               ], perfurante, arco,   1).

arma(azagaia,       1,  6, 20, [            l                      ], perfurante, dardo,  1).

arma(adagas_duplas, 2,  4, 18, [   d,    f, l, m,          especial], perfurante, faca,   2).

arma(arco_longo,    1,  8, 20, [   d,             p                ], perfurante, arco,   1).
arma(besta_pesada,  1, 12, 19, [   d,             p, r             ], perfurante, besta,  2).

arma(chakram,       2,  4, 20, [            l,             especial], cortante,   faca,   1).

% Lista de grupos aos quais um tipo de arma pertence
% arma_tipo(Tipo, [Categorias]).
arma_tipo(adaga,         [simples]).
arma_tipo(bastao,        [simples]).

arma_tipo(lanca,         [simples]).

arma_tipo(arco_curto,    [simples,  distancia]).

arma_tipo(azagaia,       [simples,  arremesso]).

arma_tipo(adagas_duplas, [complexa]).

arma_tipo(arco_longo,    [complexa, distancia]).
arma_tipo(besta_pesada,  [complexa, distancia]).

arma_tipo(chakram,       [complexo, arremesso]).

% Lista de alcances
% arma_alcance(Tipo, Alcance_padrao, Alcance_maximo).
arma_alcance(adaga,         6,  18).
arma_alcance(lanca,         6,  18).

arma_alcance(arco_curto,   24,  96).

arma_alcance(azagaia,      12,  30).

arma_alcance(arco_longo,   30, 120).
arma_alcance(besta_pesada, 45, 180).

arma_alcance(chakram,      18,  36).
