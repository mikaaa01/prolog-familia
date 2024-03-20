% HECHOS
producto(lgS10).
producto(samsungB125).
producto(lgBatimix).
producto(samsungL200).
producto(bose).
producto(lg).
producto(xbox360).
producto(xboxOne).
producto(ps2).
producto(ps3).
producto(omen560).
producto(pavilion15a).
producto(destrunaitor500).

cliente(maria).
cliente(juana).
cliente(jeremias).

categoria(electrodomestico).
categoria(entretenimiento).
categoria(computadoras).

color(lgS10, blanco).
color(samsungB125,negro).
color(lgBatimix, rojo).
color(samsungL200, negro)
color(bose, blanco).
color(lg, rojo).
color(xbox360, verde).
color(xboxOne, verde).
color(ps2, negro).
color(ps3, negro).
color(omen560, plateado).
color(pavilion15a, plateado).
color(destrunaitor500, plateado).

esColor(negro).
esColor(blanco).
esColor(rojo).
esColor(verde).
esColor(plateado).


% REGLAS

esProducto(Producto):- producto(Producto).
esCliente(Cliente):- cliente(Cliente).
esCategoria(Categoria):- categoria(Categoria).


esProducto(Color):- deColor(Color).
esProducto(Color):- deColor(Producto,esColor), esProducto(Producto, negro).

esProducto(Color):- deColor(Color).
esProducto(Color):- deColor(Producto,esColor), esProducto(Producto, blanco).

esProducto(Color):- deColor(Color).
esProducto(Color):- deColor(Producto,esColor), esProducto(Producto, rojo).

esProducto(Color):- deColor(Color).
esProducto(Color):- deColor(Producto,esColor), esProducto(Producto, verde).

esProducto(Color):- deColor(Color).
esProducto(Color):- deColor(Producto,esColor), esProducto(Producto,plateado).


