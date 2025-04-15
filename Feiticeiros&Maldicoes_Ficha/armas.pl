%%%%%% Ficha de Customização %%%%%%

% Armas do personagem
% personagem_arma(Nome_da_arma, Grau_da_arma).
% personagem_arma_propriedades([Propriedades]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lista de armas
% arma(Tipo, Numero_de_dados, Tipo_de_dado, Critico, [Propriedades],
% Tipo_de_dano, Grupo_de_arma, custo).
% Simples
arma(adaga,               1,  4, 18, [a,       f, l, m                   ], perfurante, faca,     1).
arma(bastao,              1,  6, 20, [               m,       v          ], impacto,    bastao,   1).
arma(clava,               1,  8, 20, [               m,       v          ], impacto,    bastao,   1).
arma(espada_curta,        1,  6, 19, [         f, l, m                   ], cortante,   espada,   1).
arma(faixas,              1,  1, 20, [            l, m,          especial], impacto,    pugilato, 1).
arma(foice,               1,  6, 19, [         f, l, m                   ], cortante,   haste,    1).
arma(lanca,               1,  6, 19, [a,    e,                v          ], perfurante, haste,    1).
arma(leque_bastao,        1,  4, 18, [         f, l,             especial], impacto,    bastao,   1).
arma(leque_faca,          1,  4, 18, [         f, l,             especial], cortante,   faca,     1).
arma(machado,             1,  8, 20, [                        v          ], cortante,   machado,  1).
arma(mangual,             1,  8, 20, [                                   ], impacto,    chicote,  1).
arma(manopla,             1,  1, 19, [            l, m,          especial], impacto,    pugilato, 1).
arma(martelo,             1,  8, 20, [                        v          ], impacto,    martelo,  1).
arma(tridente,            1,  6, 19, [a,    e,                v          ], perfurante, haste,    1).
% Simples a distância
arma(arco_curto,          1,  6, 20, [   d                               ], perfurante, arco,     1).
arma(besta_leve,          1,  8, 19, [            l,       r             ], perfurante, besta,    1).
arma(pistola,             2,  6, 19, [                     r             ], perfurante, tiro,     2).
% Simples de arremesso
arma(azagaia,             1,  6, 20, [            l                      ], perfurante, dardo,    1).
arma(dardo,               1,  4, 18, [            l                      ], perfurante, dardo,    1).
% Complexas
arma(adagas_duplas,       2,  4, 18, [   d,    f, l, m,          especial], perfurante, faca,     2).
arma(adaga_de_aparar,     1,  3, 19, [         f, l, m,          especial], perfurante, faca,     2).
arma(alabarda,            1, 10, 20, [   d, e                            ], cortante,   haste,    1).
arma(chicote,             1,  4, 18, [      e, f, l                      ], cortante,   chicote,  1).
arma(chicote_de_corrente, 1,  6, 20, [      e,          p,    v          ], impacto,    chicote,  2).
% O chicote espinhento possui 2 danos independentes, cada um de um tipo
%  mas ainda não sei como implementar isso
arma(chicote_espinhento,  2,  4, 19, [      e, f, l,             especial], impacto,    chicote,  2).
arma(clava_pesada,        2,  6, 20, [   d,             p                ], impacto,    bastao,   2).
arma(corrente_de_aco,     2,  4, 20, [      e                            ], impacto,    chicote,  1).
arma(espada_de_gancho,    1,  6, 19, [         f, l, m,          especial], cortante,   espada,   1).
arma(espada_longa,        1,  8, 20, [                        v          ], cortante,   espada,   1).
arma(espada_grande,       1, 12, 20, [   d,             p                ], cortante,   espada,   2).
arma(espada_colossal,     2,  8, 20, [   d,             p,       especial], cortante,   espada,   3).
arma(foice_grande,        1, 10, 20, [                        v          ], cortante,   haste,    2).
arma(kusarigama_foice,    1,  6, 19, [                           especial], cortante,   haste,    2).
arma(kusarigama_peso,     1,  6, 19, [                           especial], impacto,    haste,    2).
arma(lanca_grande,        1, 12, 20, [   d, e,                   especial], perfurante, haste,    2).
arma(machado_grande,      1, 12, 20, [   d,             p                ], cortante,   machado,  2).
arma(martelo_grande,      1, 12, 20, [   d,             p                ], impacto,    martelo,  2).
arma(nunchaku,            1,  6, 19, [      e, f,    m                   ], impacto,    bastao,   1).
arma(nunchaku_pesado,     2,  6, 19, [   d, e,       m, p                ], impacto,    bastao,   2).
arma(rapieira,            1,  8, 19, [         f                         ], perfurante, espada,   1).
arma(soco_ingles,         1,  1, 20, [   d,          m,          especial], impacto,    pugilato, 2).
% Complexas a distância
arma(arco_longo,          1,  8, 20, [   d,             p                ], perfurante, arco,     1).
arma(besta_pesada,        1, 12, 19, [   d,             p, r             ], perfurante, besta,    2).
arma(canhao_de_mao,       2, 10, 20, [   d,             p, r             ], perfurante, tiro,     3).
arma(escopeta,            2,  8, 20, [   d,                r,    especial], perfurante, tiro,     3).
arma(metralhadora,        1, 10, 19, [   d,                r,    especial], perfurante, tiro,     3).
arma(rifle,               2,  8, 19, [   d,                r             ], perfurante, tiro,     2).
arma(rifle_de_precisao,   2, 10, 19, [   d,             p, r             ], perfurante, tiro,     3).
% Complexas de arremesso
arma(chakram,             2,  4, 20, [            l,             especial], cortante,   faca,     1).
arma(kunai,               1,  6, 19, [            l                      ], perfurante, dardo,    1).
arma(rede,                0,  0, 19, [                           especial], _,          _,        2).
arma(shuriken,            1,  4, 18, [            l                      ], cortante,   dardo,    1).
% Lista de grupos aos quais um tipo de arma pertence
% arma_tipo(Tipo, [Categorias]).
arma_tipo(adaga,               [simples]).
arma_tipo(bastao,              [simples]).
arma_tipo(clava,               [simples]).
arma_tipo(espada_curta,        [simples]).
arma_tipo(faixas,              [simples]).
arma_tipo(foice,               [simples]).
arma_tipo(lanca,               [simples]).
arma_tipo(leque,               [simples]).
arma_tipo(machado,             [simples]).
arma_tipo(mangual,             [simples]).
arma_tipo(manopla,             [simples]).
arma_tipo(martelo,             [simples]).
arma_tipo(tridente,            [simples]).

arma_tipo(arco_curto,          [simples,  distancia]).
arma_tipo(besta_leve,          [simples,  distancia]).
arma_tipo(pistola,             [simples,  distancia]).

arma_tipo(azagaia,             [simples,  arremesso]).
arma_tipo(dardo,               [simples,  arremesso]).

arma_tipo(adagas_duplas,       [complexa]).
arma_tipo(adaga_de_aparar,     [complexa]).
arma_tipo(alabarda,            [complexa]).
arma_tipo(chicote,             [complexa]).
arma_tipo(chicote_de_corrente, [complexa]).
arma_tipo(chicote_espinhento,  [complexa]).
arma_tipo(clava_pesada,        [complexa]).
arma_tipo(corrente_pesada,     [complexa]).
arma_tipo(corrente_de_aco,     [complexa]).
arma_tipo(espada_de_gancho,    [complexa]).
arma_tipo(espada_longa,        [complexa]).
arma_tipo(espada_grande,       [complexa]).
arma_tipo(espada_colossal,     [complexa]).
arma_tipo(foice_grande,        [complexa]).
arma_tipo(kusarigama,          [complexa]).
arma_tipo(lanca_grande,        [complexa]).
arma_tipo(machado_grande,      [complexa]).
arma_tipo(martelo_grande,      [complexa]).
arma_tipo(nunchaku,            [complexa]).
arma_tipo(nunchaku_pesado,     [complexa]).
arma_tipo(rapieira,            [complexa]).
arma_tipo(soco_ingles,         [complexa]).

arma_tipo(arco_longo,          [complexa, distancia]).
arma_tipo(besta_pesada,        [complexa, distancia]).
arma_tipo(canhao_de_mao,       [complexa, distancia]).
arma_tipo(escopeta,            [complexa, distancia]).
arma_tipo(metralhadora,        [complexa, distancia]).
arma_tipo(rifle,               [complexa, distancia]).
arma_tipo(rifle_de_precisao,   [complexa, distancia]).

arma_tipo(chakram,             [complexo, arremesso]).
arma_tipo(kunai,               [complexo, arremesso]).
arma_tipo(rede,                [complexo, arremesso]).
arma_tipo(shuriken,            [complexo, arremesso]).


% Lista de alcances
% arma_alcance(Tipo, Alcance_padrao, Alcance_maximo).
% Alcance padrão é o alcance máximo sem penalidades
% Alcance máximo é o alcance máximo com penalidade,
%  em distâncias maiores, ataques não são possíveis.
arma_alcance(adaga,               6,  18).
arma_alcance(lanca,               6,  18).
arma_alcance(tridente,            6,  18).

arma_alcance(arco_curto,         24,  96).
arma_alcance(besta_leve,         24,  96).
arma_alcance(pistola,            30,  90).

arma_alcance(azagaia,            12,  30).
arma_alcance(dardo,              12,  30).

arma_alcance(arco_longo,         30, 120).
arma_alcance(besta_pesada,       45, 180).
arma_alcance(canhao_de_mao,      30,  90).
arma_alcance(escopeta,            9,  18).
arma_alcance(metralhadora,       30,  90).
arma_alcance(rifle,              60, 180).
arma_alcance(rifle_de_precisao, 180, 360).

arma_alcance(chakram,            18,  36).
arma_alcance(kunai,              12,  30).
arma_alcance(rede,                9,  27).
arma_alcance(shuriken,           12,  30).
