% DOCENTE

juan.
maria.
estela.

% MATERIAS

basededatos2.
redes1.
ia.

% ESTUDIANTES

arturito.
andres.
jose.
karina.
mariel.



ensena(juan, basededatos2).
ensena(maria, basededatos2).
ensena(maria, redes1).
ensena(maria, ia).
ensena(estela, redes1).
ensena(estela, ia).

asisteA(arturito, basededatos2).
asisteA(arturito, redes1).
asisteA(andres, redes1).
asisteA(andres, ia).
asisteA(jose, basededatos2).
asisteA(jose, redes1).
asisteA(jose, ia).
asisteA(karina, redes1).
asisteA(karina, ia).
asisteA(mariel, ia).


esDocenteDe(Docente, Estudiante) :- ensena(Docente, Materia), asisteA(Estudiante, Materia).
esCompaneroDe(EstudianteA, EstudianteB) :- asisteA(EstudianteA, Materia), asisteA(EstudianteB, Materia).