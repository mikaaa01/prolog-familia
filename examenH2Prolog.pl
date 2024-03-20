% Reglas para la categoría de productos
es_producto(batidora).
es_producto(lavadora).
es_producto(parlante).
es_producto(xbox360).
es_producto(xboxone).
es_producto(ps2).
es_producto(ps3).
es_producto(omen560).
es_producto(pavillon15a).
es_producto(destrunaitor500).

% Reglas para la categoría de clientes
es_cliente(maria).
es_cliente(juana).
es_cliente(jeremias).

% Reglas para clasificar los productos en categorías
es_electrodomestico(batidora).
es_electrodomestico(lavadora).

es_entretenimiento(parlante).
es_entretenimiento(xbox360).
es_entretenimiento(xboxone).
es_entretenimiento(ps2).
es_entretenimiento(ps3).

es_computadora(omen560).
es_computadora(pavillon15a).
es_computadora(destrunaitor500).

% Reglas para definir características de los productos
color(negro, samsung_b125).
color(blanco, lg510).
color(rojo, lgbatimix).
color(rojo, lg).
color(blanco, bose).
color(negro, lg).
color(verde, xbox360).
color(verde, xboxone).
color(negro, ps2).
color(negro, ps3).
color(plateado, omen560).
color(plateado, pavillon15a).
color(plateado, destrunaitor500).

precio(barato, lg510).
precio(caro, samsung_b125).
precio(barato, lgbatimix).
precio(caro, samsung_l2000).
precio(caro, bose).
precio(barato, lg).
precio(barato, xbox360).
precio(caro, xboxone).
precio(barato, ps2).
precio(barato, ps3).
precio(barato, omen560).
precio(caro, pavillon15a).
precio(barato, destrunaitor500).

calidad(bueno, lg510).
calidad(malo, samsung_b125).
calidad(malo, lgbatimix).
calidad(bueno, samsung_l2000).
calidad(malo, lg).
calidad(malo, bose).
calidad(malo, xbox360).
calidad(bueno, xboxone).
calidad(bueno, ps2).
calidad(bueno, ps3).
calidad(malo, omen560).
calidad(bueno, pavillon15a).
calidad(bueno, destrunaitor500).

% Reglas para identificar productos por color
es_negro(Producto) :- color(negro, Producto).
es_blanco(Producto) :- color(blanco, Producto).
es_rojo(Producto) :- color(rojo, Producto).
es_verde(Producto) :- color(verde, Producto).
es_plateado(Producto) :- color(plateado, Producto).

% Reglas para identificar productos por características
es_bueno(Producto) :- calidad(bueno, Producto).
es_malo(Producto) :- calidad(malo, Producto).
es_caro(Producto) :- precio(caro, Producto).
es_barato(Producto) :- precio(barato, Producto).

% Reglas para identificar productos por categoría
es_categoria(Producto, electrodomesticos) :- es_electrodomestico(Producto).
es_categoria(Producto, entretenimiento) :- es_entretenimiento(Producto).
es_categoria(Producto, computadoras) :- es_computadora(Producto).
es_categoria(Producto, batidoras) :- es_producto(Producto), es_electrodomestico(Producto), es_batidora(Producto).
es_categoria(Producto, lavadoras) :- es_producto(Producto), es_electrodomestico(Producto), es_lavadora(Producto).
es_categoria(Producto, parlantes) :- es_producto(Producto), es_entretenimiento(Producto), es_parlante(Producto).
es_categoria(Producto, consolas) :- es_producto(Producto), es_entretenimiento(Producto), es_consola(Producto).
es_categoria(Producto, xbox) :- es_producto(Producto), es_entretenimiento(Producto), es_xbox(Producto).
es_categoria(Producto, playstation) :- es_producto(Producto), es_entretenimiento(Producto), es_ps(Producto).
es_categoria(Producto, laptop) :- es_producto(Producto), es_computadora(Producto), es_laptop(Producto).
es_categoria(Producto, escritorio) :- es_producto(Producto), es_computadora(Producto), es_escritorio(Producto).
es_categoria(Producto, dell) :- es_producto(Producto), es_computadora(Producto), es_dell(Producto).
es_categoria(Producto, hp) :- es_producto(Producto), es_computadora(Producto), es_hp(Producto).
es_categoria(Producto, marca_patito) :- es_producto(Producto), es_computadora(Producto), es_patito(Producto).


% Reglas para recomendar productos a los clientes según sus gustos

% Gustos de Maria
recomendar_producto(maria, Producto) :-
    es_categoria(Producto, electrodomesticos),
    es_blanco(Producto),
    es_barato(Producto).

recomendar_producto(maria, Producto) :-
    es_categoria(Producto, entretenimiento),
    es_xbox(Producto),
    es_bueno(Producto).

% Gustos de Juana
recomendar_producto(juana, Producto) :-
    es_categoria(Producto, electrodomesticos),
    es_lavadora(Producto),
    es_caro(Producto).

recomendar_producto(juana, Producto) :-
    es_categoria(Producto, computadoras),
    es_hp(Producto),
    es_barato(Producto).

% Gustos de Jeremías
recomendar_producto(jeremias, Producto) :-
    es_categoria(Producto, entretenimiento),
    es_consola(Producto),
    es_caro(Producto).

recomendar_producto(jeremias, Producto) :-
    es_categoria(Producto, computadoras),
    es_escritorio(Producto),
    es_bueno(Producto).

% Si no hay recomendaciones para los gustos específicos del cliente, se hace una recomendación general
recomendar_producto(Cliente, Producto) :-
    es_producto(Producto),
    es_categoria(Producto, _),
    not((recomendar_producto(Cliente, Producto))),
    es_barato(Producto).





