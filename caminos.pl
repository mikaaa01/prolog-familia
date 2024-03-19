% HECHOS

esDepartamento(la_paz).
esDepartamento(oruro).
esDepartamento(tarija).
esDepartamento(cochabamba).
esDepartamento(santa_cruz).
esDepartamento(potosi).
esDepartamento(pando).
esDepartamento(chuquisaca).
esDepartamento(beni).

esCiudad(la_paz_ciudad).
esCiudad(oruro_ciudad).
esCiudad(tarija_ciudad).
esCiudad(cochabamba_ciudad).
esCiudad(santa_cruz_ciudad).
esCiudad(potosi_ciudad).
esCiudad(cobija).
esCiudad(sucre).
esCiudad(trinidad).
esCiudad(apolo).
esCiudad(uyuni).
esCiudad(villa_montes).
esCiudad(riberalta).
esCiudad(san_jose_de_chiquitos).
esCiudad(puerto_suarez).

esCapital(la_paz_ciudad, la_paz).
esCapital(oruro_ciudad, oruro).
esCapital(tarija_ciudad, tarija).
esCapital(cochabamba_ciudad, cochabamba).
esCapital(santa_cruz_ciudad, santa_cruz).
esCapital(potosi_ciudad, potosi).
esCapital(cobija, pando).
esCapital(sucre, chuquisaca).
esCapital(trinidad, beni).
esCapitalDelPais(la_paz_ciudad).

caminoDirecto(riberalta, cobija).
caminoDirecto(cobija, apolo).
caminoDirecto(apolo, cobija).
caminoDirecto(apolo, la_paz_ciudad).
caminoDirecto(la_paz_ciudad, apolo).
caminoDirecto(la_paz_ciudad, oruro_ciudad).
caminoDirecto(oruro_ciudad, la_paz_ciudad).
caminoDirecto(la_paz_ciudad, cochabamba_ciudad).
caminoDirecto(cochabamba_ciudad, la_paz_ciudad).
caminoDirecto(la_paz_ciudad, trinidad).
caminoDirecto(oruro_ciudad, uyuni).
caminoDirecto(oruro_ciudad, sucre).
caminoDirecto(tarija_ciudad, uyuni).
caminoDirecto(uyuni, tarija_ciudad).
caminoDirecto(tarija_ciudad, sucre).
caminoDirecto(tarija_ciudad, villa_montes).
caminoDirecto(villa_montes, tarija_ciudad).
caminoDirecto(sucre, santa_cruz_ciudad).
caminoDirecto(sucre, cochabamba_ciudad).
caminoDirecto(cochabamba_ciudad, sucre).
caminoDirecto(santa_cruz_ciudad, cochabamba_ciudad).
caminoDirecto(santa_cruz_ciudad, trinidad).
caminoDirecto(santa_cruz_ciudad, san_jose_de_chiquitos).
caminoDirecto(san_jose_de_chiquitos, puerto_suarez).
caminoDirecto(puerto_suarez, san_jose_de_chiquitos).


% REGLAS

esCiudadONo(Nombre) :- esCiudad(Nombre).
esDepartamentoONo(Nombre) :- esDepartamento(Nombre).
esCapitalDeDepartamento(Ciudad) :- esCapital(Ciudad, Departamento), esDepartamento(Departamento).
esCapitalDelPaisONo(Ciudad) :- esCapitalDelPais(Ciudad).
estaEnDepartamento(Ciudad) :- esCiudad(Ciudad).
hayCaminoDirecto(Ciudad1, Ciudad2) :- caminoDirecto(Ciudad1, Ciudad2); caminoDirecto(Ciudad2, Ciudad1).
hayCaminoDirectoEntreDepartamentos(Departamento1, Departamento2) :- esCapital(Ciudad1, Departamento1), esCapital(Ciudad2, Departamento2), hayCaminoDirecto(Ciudad1, Ciudad2).
ciudadesDestino(Ciudad, Destino) :- caminoDirecto(Ciudad, Destino) ; caminoDirecto(Destino, Ciudad).
departamentosDestino(Departamento, Destino) :- esCapital(Ciudad, Departamento), esCapital(OtraCiudad, Destino), hayCaminoDirecto(Ciudad, OtraCiudad).
ciudadesHaciaCapitalBolivia(Ciudad) :- esCapitalDelPais(Ciudad), caminoDirecto(Ciudad, la_paz_ciudad).
departamentoConCapital(Departamento) :- esCapital(_, Departamento).
