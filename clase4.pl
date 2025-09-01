estudiante(kelvin).
estudiante(raul).
estudiante(florence).
estudiante(mauricio).
estudiante(melissa).

%--si ellacuria no es estudiante usando negacion 
no_es_student(Name) :- \+ estudiante(ellacuria).
%?- no_es_student(ellacuria).
%--con corte obtener solo el primer estudiante de la lista
primer_estudiante(X) :- estudiante(X), !.
%?- primer_estudiante(X).

%--con fallo listar todos los estudiantes usando fail
%una regla con tres condiciones para cumplirse obligatorias y una opcional (salto de linea) y tiene que tener un par
listar_estudiantes :- 
    estudiante(X), write(X), nl, fail.
listar_estudiantes.
%?- listar_estudiantes.
%entrada y salida, pedir al usuario que ingrese un nombre y verificar si es estudiante

verificar_estudiante :-
write('Ingrese un nombre: '), read(Nombre),
    (   estudiante(Nombre)
    ->  write(Nombre), write(' es estudiante.')
    ;   write(Nombre), write(' no es estudiante.')
    ).