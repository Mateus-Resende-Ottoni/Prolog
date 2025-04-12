% Dados
rolar_dado(Number, Result) :-
  random_between(1, Number, Result).
rolar_dado_soma(1, Tipo_do_dado, Resultado) :-
  rolar_dado(Tipo_do_dado, Resultado), !.
rolar_dado_soma(Quantidade, Tipo_do_dado, Resultado) :-
  Quantidade > 1,
  Quantidade1 is Quantidade-1,
  roll_die_sum(Quantidade1, Tipo_do_dado, Resultado1),
  roll_die(Tipo_do_dado, Resultado2),
  Resultado is Resultado1 + Resultado2.
rolar_dados(Dados_quantidade, Tipo_do_dado, Resultado) :-
  rolar_dado_soma(Dados_quantidade, Tipo_do_dado, Resultado).
d4(Resultado)  :-
  random_between(1,   4, Resultado).
d8(Resultado)  :-
  random_between(1,   8, Resultado).
d10(Resultado) :-
  random_between(1,  10, Resultado).
d12(Resultado) :-
  random_between(1,  12, Resultado).
d20(Resultado) :-
  random_between(1,  20, Resultado).
d100(Resultado) :-
  random_between(1, 100, Resultado).

