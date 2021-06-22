
nota(ana,matematica,7).
nota(ana,lengua,10).
nota(carlos,lengua,9).
nota(ana,geografia,2).

nota(nevil,herbologia, 10).
nota(harry,herbologia, 7).
nota(ron,herbologia, 5).


notaMinimaAprobacion(herbologia,7).


aproboConMargen(Alumno,Materia,Margen):-
    nota(Alumno,Materia,Nota),
    notaMinimaAprobacion(Materia,Minima),
    Margen is Nota - Minima,
    Margen >= 0.

/*
esNotaDeAprobacion(6).
esNotaDeAprobacion(7).
esNotaDeAprobacion(8).
esNotaDeAprobacion(9).
esNotaDeAprobacion(10).
esNotaDeAprobacion(desmayo).
*/

%%esNotaDeAprobacion(Nota):- Nota > 5.
esNotaDeAprobacion(Nota):- between( 6,10,Nota).

aprueba(Alguien,Materia) :- 
    nota(Alguien,Materia,Nota),
    esNotaDeAprobacion(Nota).

aprueba(Alguien,Materia):- 
    esMateriaDeHogwart(Materia),
    tieneCicatriz(Alguien).

esMateriaDeHogwart(herbologia).
esMateriaDeHogwart(defensaArtesOscuras).

tieneCicatriz(harry).
tieneCicatriz(carlitos).

personajeSaga(ron).
personajeSaga(nevil).
personajeSaga(harry).
personajeSaga(hermione).


leGanaA(Persona):- 
    personajeSaga(Persona),
    not(tieneCicatriz(Persona)).

