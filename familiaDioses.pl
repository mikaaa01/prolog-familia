% ATOMOS
cronos.
ares.
hera.
poseidon.
afrodita.
hefesto.
hipolita.
zeus.
baco.
atena.
nera.
hermes.

% HECHOS
esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).

esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(atena).
esMujer(nera).

esDescendienteDirecto(hera, cronos).
esDescendienteDirecto(afrodita, ares).
esDescendienteDirecto(hefesto, ares).
esDescendienteDirecto(afrodita, hera).
esDescendienteDirecto(hefesto, hera).
esDescendienteDirecto(zeus, poseidon).
esDescendienteDirecto(zeus, afrodita).
esDescendienteDirecto(baco, afrodita).
esDescendienteDirecto(baco, hefesto).
esDescendienteDirecto(atena, afrodita).
esDescendienteDirecto(atena, hefesto).
esDescendienteDirecto(nera, hipolita).
esDescendienteDirecto(nera, zeus).
esDescendienteDirecto(hermes, atena).

% REGLAS
esPadre(Padre, Hijo) :- esHombre(Padre), esDescendienteDirecto(Hijo, Padre).
esMadre(Madre, Hijo) :- esMujer(Madre), esDescendienteDirecto(Hijo, Madre).

esHijo(Hijo, Padre) :- esDescendienteDirecto(Hijo, Padre), esHombre(Hijo).
esHija(Hija, Madre) :- esDescendienteDirecto(Hija, Madre), esMujer(Hija).

esHermano(Hermano1, Hermano2) :- esHombre(Hermano1), esDescendienteDirecto(Hermano1, Padre), esDescendienteDirecto(Hermano2, Padre), Hermano1 \= Hermano2.
esHermana(Hermana1, Hermana2) :- esMujer(Hermana1), esDescendienteDirecto(Hermana1, Madre), esDescendienteDirecto(Hermana2, Madre), Hermana1 \= Hermana2.

esAbuelo(Abuelo, Nieto) :- esHombre(Abuelo), esDescendienteDirecto(Padre, Abuelo), esDescendienteDirecto(Nieto, Padre).
esAbuela(Abuela, Nieto) :- esMujer(Abuela), esDescendienteDirecto(Madre, Abuela), esDescendienteDirecto(Nieto, Madre).