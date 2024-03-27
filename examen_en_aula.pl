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
