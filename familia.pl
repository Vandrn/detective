vive_en(don_Ernesto, valle_verde).
vive_en(doña_Teresa, valle_verde).
vive_en(carlos, capital).
vive_en(sofia, capital).
vive_en(ana, valle_verde).
vive_en(lucia, capital).
vive_en(mateo, capital).
vive_en(valeria, capital).
vive_en(andres, valle_verde).
vive_en(miguel, valle_verde).
vive_en(don_felipe, capital).
vive_en(ricardo, capital).
vive_en(rosa, valle_verde).
vive_en(isabel, capital).
vive_en(joaquin, capital).
vive_en(doña_carmen, valle_verde).
vive_en(fernanda, capital).
vive_en(laura, capital).

trabaja_en(don_Ernesto, maestro).
trabaja_en(doña_Teresa, enfermera).
trabaja_en(carlos, ingeniero_civil).
trabaja_en(sofia, arquitecta).
trabaja_en(ana, maestra).
trabaja_en(andres, musico).
trabaja_en(lucia, estudiante_medicina).
trabaja_en(ricardo, abogado).
trabaja_en(laura, bibliotecaria).
trabaja_en(miguel, agricultor).
trabaja_en(rosa, administra_tienda).
trabaja_en(fernanda, estudia_biologia).
trabaja_en(doña_carmen, partera).
trabaja_en(isabel, estudia_derecho).
trabaja_en(don_felipe, comerciante).
trabaja_en(joaquin, musico).
trabaja_en(mateo, estudiante).
trabaja_en(valeria, estudiante).

padre(don_Ernesto, ana).
padre(don_Ernesto, carlos).
padre(don_Ernesto, lucia).
padre(carlos, mateo).
padre(carlos, valeria).
padre(ricardo, daniel).
padre(miguel, fernanda).
padre(don_felipe, joaquin).

madre(doña_Teresa, ana).
madre(doña_Teresa, carlos).
madre(doña_Teresa, lucia).
madre(sofia, mateo).
madre(sofia, valeria).
madre(ana, andres).
madre(laura, daniel).
madre(rosa, fernanda).

casado_con(don_Ernesto, Doña_Teresa).
casado_con(carlos, sofia).
casado_con(ricardo, laura).
casado_con(miguel, rosa).

hijo(ana, don_Ernesto).
hijo(ana, doña_Teresa).
hijo(carlos, don_Ernesto).
hijo(carlos, doña_Teresa).
hijo(lucia, don_Ernesto).
hijo(lucia, doña_Teresa).
hijo(mateo, carlos).
hijo(mateo, sofia).
hijo(valeria, carlos).
hijo(valeria, sofia).
hijo(daniel, ricardo).
hijo(daniel, laura).
hijo(fernanda, miguel).
hijo(fernanda, rosa).
hijo(andres, ana).
hijo(joaquin, don_felipe).

amigo(carlos, ricardo).
amigo(daniel, mateo).
amigo(laura, valeria).
amiga(doña_carmen, doña_Teresa).
amigo(fernanda, isabel).
amigo(don_felipe, miguel).
amigo(joaquin, andres).

primo(lucia, daniel).
primo(carlos, daniel).
primo(ana, daniel).
primo(fernanda, andres).
primo(fernanda, valeria).
primo(fernanda, mateo).


% Reglas
% Definir si alguien es abuelo o abuela
es_abuelo(X) :- hijo(Z, X), hijo(Y, Z).
 
%Determinar si dos personas son hermanas o hermanos 
son_hermanos(X, Y) :- hijo(X, Z), hijo(Y, Z), X \= Y.

%Determinar que si son tios o tias
es_tio(X, Y) :- hijo(Y, Z), son_hermanos(X, Z).

%Determinar si son primos
son_primos(X, Y) :- hijo(X, Z), hijo(Y, W), son_hermanos(Z, W).

%verificar si un amigo de un primo
es_amigo_de_un_primo(X, Y) :- son_primos(X, Z), amigo(Z, Y).


%Consulta
% ?- es_abuelo(don_Ernesto).
% ?- son_hermanos(carlos, ana).
% ?- es_tio(carlos, andres).
% ?- son_primos(lucia, daniel).
% ?- es_amigo_de_un_primo(fernanda, X).