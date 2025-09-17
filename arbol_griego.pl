%-- Árbol genealógico griego
arbol(caos,arbol(gea,arbol(cronos,arbol(hestia, nil, nil),arbol(demeter,arbol(hera, nil, nil),arbol(zeus,arbol(poseidon, nil, nil),arbol(hades, nil, nil)))),nil),arbol(uranos,arbol(rea, nil, nil),nil)).

postorden(nil, []).
postorden(arbol(X, Izq, Der), L) :-
    postorden(Izq, L1),
    postorden(Der, L2),
    append(L1, L2, L3),
    append(L3, [X], L).

% consulta postorden
% ?- postorden(arbol(caos,arbol(gea,arbol(cronos,arbol(hestia, nil, nil),arbol(demeter,arbol(hera, nil, nil),arbol(zeus,arbol(poseidon, nil, nil),arbol(hades, nil, nil)))),nil),arbol(uranos,arbol(rea, nil, nil),nil)), L).