 1Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico)
 CREATE TABLE IF NOT EXISTS productos ( ID int primary key, 
nombre VARCHAR (255),PRECIO INT)
2 Inserta al menos cinco registros en la tabla "Productos".
INSERT INTO public.productos (id,nombre, precio)
VALUES (4,'ESTUFA',167)
3. Actualiza el precio de un producto en la tabla "Productos".
UPDATE public.productos 
SET PRECIO=285
WHERE ID=2
4. Elimina un producto de la tabla "Productos".
DELETE FROM public.productos
where ID= 2
5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").
select * from public.usuarios
inner join public.productos
on public.usuarios.id= public.productos.id
EJERCICIO 4
1.Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave
primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y
"id_producto" (entero, clave foránea de la tabla "Productos").
create table pedidos(id int primary key,
id_usuarios int,
id_productos int,
constraint fk_usuarios_id FOREIGN KEY (usuarios_id)REFERENCES usuarios(id)
constraint fk_productos_id FOREIGN KEY (productos_id)REFERENCES productos(id))
2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con
productos.
insert into pedidos(id_usuario, id_productos)
values (1,2)
3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de
los productos que han comprado, incluidos aquellos que no han realizado
ningún pedido (utiliza LEFT JOIN y COALESCE).
SELECT usuario.nombre,prodcutos.nombre
FROM usuarios LEFT JOIN ON usuarios.id = pedidos.usuarios_id
JOIN productos ON productos.ID = Pedidos.productos_id
 
-----------------------****-------------------------------
Ejercicio 5
1. Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre (cadena de texto)
CREATE TABLE IF NOT EXISTS Clientes (ID INT, NOMBRE VARCHAR (55))
2. Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes".
INSERT INTO PUBLIC.CLIENTES (ID, NOMBRE)
VALUES (1,'JOHN')
3. Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes".
UPDATE PUBLIC.CLIENTES
SET NOMBRE= 'JOHN Doe'
where id=1
4. Elimina el cliente con id=1 de la tabla "Clientes"
DELETE FROM public.clientes
WHERE id=1
5. Lee todos los clientes de la tabla "Clientes".
SELECT * FROM PUBLIC.CLIENTES
6. Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id (entero)
CREATE TABLE IF NOT EXISTS pedidos (id INT, clientes_id int)
7. Inserta un pedido con id=1 y cliente_id=1 en la tabla "Pedidos".
insert into public.pedidos (id, clientes_id)
values (1,1) 
8.Elimina el pedido con id=1 de la tabla "Pedidos".
delete from public.pedidos
where id=1
9.Actualiza el cliente_id del pedido con id=1 a 2 en la tabla "Pedidos"
 update public.pedidos
set clientes_id=2
where clientes_id=1
10. Lee todos los pedidos de la tabla "Pedidos".
SELECT * FROM PUBLIC.PEDIDOS
11. Crea una tabla llamada "Productos" con las columnas id (entero) y nombre(cadena de texto).
create table if NOT EXISTS productos (id int, nombre varchar (55))
12. Inserta un producto con id=1 y nombre='Camisa' en la tabla "Productos".
insert into public.productos(id, nombre)
values (1,'camisa')
13. Actualiza el nombre del producto con id=1 a 'Pantalón' en la tabla 
"Productos".
UPDATE public.productos
set nombre= 'pantalon'
where id=1
14. Elimina el producto con id=1 de la tabla "Productos".
delete from public.productos
where id =1
15. Lee todos los productos de la tabla "Productos".
select * from public.productos
16. Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) y producto_id (entero).
CREATE TABLE IF NOT EXISTS DETALLESPEDIDO(PEDIDOS_ID INT, PRODUCTOS_ID INT)
17. Inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla "DetallesPedido".
INSERT INTO PUBLIC.DETALLESPEDIDO VALUES(1,1)
18. Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla "DetallesPedido".
UPDATE PUBLIC.DETALLESPEDIDO
SET PEDIDOS_ID=2
WHERE PEDIDOS_ID=1
19. Elimina el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido".
DELETE FROM PUBLIC.DETALLESPEDIDO
WHERE PEDIDOS_ID=2
20. Lee todos los detalles de pedido de la tabla "DetallesPedido".
SELECT * FROM PUBLIC.DETALLESPEDIDO
21. Realiza una consulta para obtener todos los clientes y sus pedidos
correspondientes utilizando un inner join.
SELECT NAME,COUNT (VENTAS.ID)
FROM CLIENTES
JOIN VENTAS
ON VENTAS.CLIENTE_ID=CLIENTES.ID
GROUP BY NAME
23. Realiza una consulta para obtener todos los productos y los detalles de pedido
correspondientes utilizando un inner join.
SELECT clientes.name, productos.name 
FROM ventas 
JOIN clientes
ON clientes.id = ventas.client_id 
JOIN productos ON productos.id = ventas.product_id
25. Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla
"Clientes".
ALTER TABLE CLIENTES
ADD COLUMN TELEFONO VARCHAR (50)
26. Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de
datos a entero
ALTER TABLE clientes
ALTER COLUMN telefono int
27. Elimina la columna "telefono" de la tabla "Clientes".
ALTER TABLE clientes
DROP COLUMN telefono
28. Cambia el nombre de la tabla "Clientes" a "Usuarios".
ALTER TABLE Clientes
RENAME TO Usuarios
29. Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a
"nombre_completo".
ALTER TABLE usuarios
rename nombre to nombre_completo
30. Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios".
ALTER TABLE usuarios
 ADD CONSTRAINT fk_product_id 
 FOREIGN KEY (product_id) REFERENCES productos (id)