% Dados
roll_die(Number, Result) :-
  random_between(1, Number, Result).
d4(Result)  :-
  random_between(1,      4, Result).
d8(Result)  :-
  random_between(1,      8, Result).
d10(Result) :-
  random_between(1,     10, Result).
d12(Result) :-
  random_between(1,     12, Result).
d20(Result) :-
  random_between(1,     20, Result).

