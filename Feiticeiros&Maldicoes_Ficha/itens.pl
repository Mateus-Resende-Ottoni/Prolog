%%%%%% Ficha de Customização %%%%%%

% Itens possuídos pelo personagem
% personagem_item(Tipo_do_item, Quantidade).
personagem_item(brinco_da_comunicacao, 2) :- !.

% Valor padrão da quantidade de itens
personagem_item(_, 0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%
%%% Lista dos itens
% item(Categoria_de_item, Nome_do_item, Custo).
% Acessórios
item(acessorio, brinco_da_comunicacao,       1).
item(acessorio, chaveiro_canalizador,        1).
item(acessorio, amuleto_do_vislumbre,        2).
item(acessorio, apanhador_de_saude,          2).
item(acessorio, bracelete_do_vigor,          2).
item(acessorio, faixa_de_foco,               2).
item(acessorio, pulseira_magistral,          2).
item(acessorio, aneis_do_conhecimento,       3).
item(acessorio, bracelete_da_forca,          3).
item(acessorio, bracelete_do_vigor_superior, 3).
item(acessorio, chaveiro_absorsor,           3).
item(acessorio, cinturao_do_inabalavel,      3).
item(acessorio, faixas_celeres,              3).
item(acessorio, ornamento_fascinante,        3).
item(acessorio, pingente_do_intelecto,       3).
item(acessorio, pulseira_primacial,          3).
% Espirituais
item(espiritual, perola_carregada,                         1).
item(espiritual, pote_de_espirito_curandeiro,              1).
item(espiritual, conjunto_de_perolas_carregadas,           2).
item(espiritual, pote_de_espirito_curandeiro_elevado,      2).
item(espiritual, laco_da_vida,                             3).
item(espiritual, pote_de_espirito_curandeiro_transcendido, 3).
item(espiritual, terco_de_perolas_carreadas,               3).
item(espiritual, pote_de_espirito_da_vida,                 4).
item(espiritual, simbolo_de_vida_absoluta,                 4).
% Medicinas
item(medicina, antidoto_simples,       1).
item(medicina, injecao_estimulante,    1).
item(medicina, mix_energetico_pequeno, 1).
item(medicina, remedio_simples,        1).
item(medicina, antidoto_intermediario, 2).
item(medicina, mix_energetico_medio,   2).
item(medicina, remedio_intermediario,  2).
item(medicina, revigorante,            2).
item(medicina, antidoto_absoluto,      3).
item(medicina, mix_energetico_grande,  3).
item(medicina, pomada_reforcadora,     3).
item(medicina, remedio_complexo,       3).
item(medicina, elixir_da_vida,         4).
% Misturas
item(mistura, oleo_amolador,        1).
item(mistura, oleo_flamejante,      1).
item(mistura, veneno_comum,         1).
item(mistura, veneno_debilitante,   1).
item(mistura, veneno_intenso,       1).
item(mistura, veneno_desnorteante,  2).
item(mistura, mistura_profana,      3).
item(mistura, veneno_maldito,       3).
item(mistura, lagrima_de_shinigami, 4).
% Talismãs
item(talisma, simbolo_de_vida, 1).
item(talisma, talisma_de_barreira, 1).
item(talisma, simbolo_de_vida_florescente, 2).
item(talisma, talisma_de_barreira_superior, 2).
item(talisma, dominio_simples_contido, 3).
item(talisma, talisma_do_apice, 4).
