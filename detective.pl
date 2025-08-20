% Personas presentes
persona(alice).
persona(robert).
persona(clara).
persona(james).

% Relaciones
esposo(alice, lord_henry).
sobrina(clara, lord_henry).
socio(james, lord_henry).
empleado(robert, lord_henry).

% Motivos (quién podría tener razones)
motivo(alice, herencia).
motivo(robert, maltrato).
motivo(clara, deuda).
motivo(james, negocios).

% Medios (quién tuvo acceso al arma)
acceso(alice, veneno).
acceso(robert, cuchillo).
acceso(clara, cuerda).
acceso(james, pistola).

% Oportunidad (quién estuvo en la biblioteca)
estuvo(alice, sala).
estuvo(robert, cocina).
estuvo(clara, biblioteca).
estuvo(james, estudio).

escena_crimen(X):-persona(X),estuvo(X,biblioteca).

motivo_oportunidad(X,Y):-estuvo(X,biblioteca),motivo(X,_).

acceso_arma(X):-estuvo(X,biblioteca),motivo(X,_),acceso(X,cuerda).

/*
Pasos de la investigación
1. Identificar sospechosos
Consulta en Prolog quiénes son las personas en la mansión.
persona(X).
alice, robert, clara, james

2. Analizar motivos
Crea una regla para identificar quién tiene un motivo para matar.
motivo(X,Y).
alice	herencia
robert	maltrato
clara	deuda
james	negocios

3. Verificar oportunidad
Crea una regla para identificar quién estuvo en la biblioteca (escena del crimen).
escena_crimen(X).
clara

4. Cruzar información
Crea una regla que combine motivo y oportunidad.
motivo_oportunidad(X):-estuvo(X,biblioteca),motivo(X,_).
motivo_oportunidad(X).
clara

5. Analizar el arma
El informe forense revela que la víctima fue estrangulada.
Ajusta tu base de conocimiento para que la única coincidencia sea con el arma correcta (cuerda).
acceso(X,cuerda).
clara

6. Descubrir al culpable
Finalmente, crea una regla para determinar quién es el asesino culpable y realiza la consulta correspondiente.
asesino(X):-estuvo(X,biblioteca),motivo(X,_),acceso(X,cuerda).
asesino(X).
clara
*/
