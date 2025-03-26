% Dados
roll_die(Number, Result) :-
  random_between(1, Number, Result).
roll_die_sum(0, _, Result) :-
  Result is 0, !.
roll_die_sum(1, Number, Result) :-
  roll_die(Number, Result), !.
roll_die_sum(N, Number, Result) :-
  N1 is N-1,
  roll_die_sum(N1, Number, R1),
  roll_die(Number, R2),
  Result is R1 + R2.
roll_dice(Dice_quantity, Dice_number, Result) :-
  roll_die_sum(Dice_quantity, Dice_number, Result).
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

