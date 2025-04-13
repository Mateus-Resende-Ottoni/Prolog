conferir_em_lista([X|_], X) :- !.
conferir_em_lista([_|L], X) :-
    conferir_em_lista(L, X).
