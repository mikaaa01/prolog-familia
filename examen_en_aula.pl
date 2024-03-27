esProducto("lg510").
esProducto("samsungB125").
esProducto("lgBatimix").
esProducto("samsungL200").
esProducto("bose").
esProducto("lg").

esCategoria(electrodomestico).
esCategoria(entretenimiento).
esCategoria(producto).

esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).

esCliente(maria).
esCliente(juana).
esCliente(jeremias).

estaEnCategoria("lg510", batidora).
estaEnCategoria("samsungB125", batidora).
estaEnCategoria("lgBatimix", lavadora).
estaEnCategoria("samsungL200", lavadora).
estaEnCategoria("bose", parlantes).
estaEnCategoria("lg", parlantes).

estaEnCategoria(batidora, electrodomestico).
estaEnCategoria(lavadora, electrodomestico).
estaEnCategoria(parlantes, entretenimiento).

estaEnCategoria(entretenimiento, producto).
estaEnCategoria(electrodomestico, producto).


tieneCaracteristica("lg510", blanco).

tieneCaracteristica("lg510", verde).
tieneCaracteristica("lg510", rojo).

tieneCaracteristica("lg510", barato).
tieneCaracteristica("lg510", bueno).

tieneCaracteristica("lg510", malo).
tieneCaracteristica("lg510", caro).

esBlanco("lg510").
esBarato("lg510").
esBueno("lg510").
esVerde("lg510").
esRojo("lg510").
esMalo("lg510").
esCaro("lg510").

esProductoDentroDeCategoria(Producto, Categoria):-esProducto(Producto), esCategoria(Categoria), estaEnCategoria(Producto, Categoria).
esProductoDentroDeCategoria(Producto, Categoria):-estaEnCategoria(Categoria2, Categoria), esProductoDentroDeCategoria(Producto, Categoria2).

% Recomendar a maria 1
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, verde), esProductoDentroDeCategoria(Producto, producto).
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, blanco), tieneCaracteristicas(Producto, barato), esProductoDentroDeCategoria(Producto, entretenimiento).
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, rojo),  tieneCaracteristicas(Producto, malo), esProductoDentroDeCategoria(Producto, electrodomestico).
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, caro), esProductoDentroDeCategoria(Producto, producto).


