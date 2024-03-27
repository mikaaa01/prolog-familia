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


esProductoDentroDeCategoria(Producto, Categoria):-esProducto(Producto), esCategoria(Categoria), estaEnCategoria(Producto, Categoria).
esProductoDentroDeCategoria(Producto, Categoria):-estaEnCategoria(Categoria2, Categoria), esProductoDentroDeCategoria(Producto, Categoria2).

tieneCaracteristica("lg510", blanco).
tieneCaracteristica("lg510", barato).
tieneCaracteristica("lg510", bueno).

esBlanco("lg510").
esBarato("lg510").
esBueno("lg510").

tieneCaracteristica("samsungB125", negro).
tieneCaracteristica("samsungB125", caro).
tieneCaracteristica("samsungB125", malo).

esNegro("samsungB125").
esCaro("samsungB125").
esMalo("samsungB125").

tieneCaracteristica("lgBatimix", rojo).
tieneCaracteristica("lgBatimix", barato).
tieneCaracteristica("lgBatimix", malo).

esRojo("lgBatimix").
esBarato("lgBatimix").
esMalo("lgBatimix").

tieneCaracteristica("samsungL200", negro).
tieneCaracteristica("samsungL200", caro).
tieneCaracteristica("samsungL200", bueno).

esNegro("samsungL200").
esCaro("samsungL200").
esBueno("samsungL200").

tieneCaracteristica("bose", blanco).
tieneCaracteristica("bose", caro).
tieneCaracteristica("bose", negro).

esBlanco("bose").
esCaro("bose").
esNegro("bose").

tieneCaracteristica("lg", rojo).
tieneCaracteristica("lg", barato).
tieneCaracteristica("l"lg"g", malo)"lg".

esRojo("lg").
esBarato("lg").
esMalo("lg").


% Recomendar a maria 
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, verde), esProductoDentroDeCategoria(Producto, producto).
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, blanco), tieneCaracteristicas(Producto, barato), esProductoDentroDeCategoria(Producto, entretenimiento).
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, rojo),  tieneCaracteristicas(Producto, malo), esProductoDentroDeCategoria(Producto, electrodomestico).
recomendarAMaria1(Producto):-esProducto(Producto), tieneCaracteristicas(Producto, caro), esProductoDentroDeCategoria(Producto, producto).


