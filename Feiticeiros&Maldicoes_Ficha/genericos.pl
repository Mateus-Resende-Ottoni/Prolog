conferir_em_lista([X|_], X) :- !.
conferir_em_lista([_|L], X) :-
    conferir_em_lista(L, X).

% Divisões, arredondando para cima ou para baixo
divisao_cima(Num, Divisor, Resultado) :-
    Auxiliar is Num/Divisor,
    ceiling(Auxiliar, Resultado).
divisao_baixo(Num, Divisor, Resultado) :-
    Auxiliar is Num/Divisor,
    floor(Auxiliar, Resultado).

% Limitar valores com um limite estabelecido
limitar(Valor, Limite, Resultado) :-
    Valor > Limite, !,
    Resultado is Limite.
limitar(Valor,      _, Resultado) :-
    Resultado is Valor.

% Escolher o maior número
maior_numero(N1, N2, Resultado) :-
    N1 > N2, !,
    Resultado is N1.
maior_numero( _, N2, Resultado) :-
    Resultado is N2.
