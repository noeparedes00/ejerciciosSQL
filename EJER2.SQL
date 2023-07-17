1. Crea una base de datos llamada "MiBaseDeDatos".
CREATE TABLE IF NOT EXISTS MiBaseDeDatos 
2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).
CREATE TABLEIF IF NOT EXISTS Usuarios (ID INT PRIMARY KEY,NOMBRE VARCHAR (255), edad INT )
3.Inserta dos registros en la tabla "Usuarios"
INSERT  INTO public.usuarios (id, nombre, edad)
values (4, 'maria becerra',22)
4. Actualiza la edad de un usuario en la tabla "Usuarios".
UPDATE public.usuarios
SET EDAD=35
WHERE ID=1
5. Elimina un usuario de la tabla "Usuarios".
DELETE FROM public.usuarios
WHERE ID=4
1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto)
CREATE TABLE IF NOT EXISTS ciudades (ID INT PRIMARY KEY,
nombre VARCHAR (255),
pais varchar(255))
2. Inserta al menos tres registros en la tabla "Ciudades".
INSERT INTO public.ciudades (id,nombre,pais)
VALUES (5,'ROMA','ITALIA')
3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"de la tabla "Ciudades".
ALTER TABLE public.usuarios
ADD COLUMN ciudades_id INT
ALTER TABLE public.usuarios
ADD CONSTRAINT FK_ciudades_id FOREIGN KEY (ciudades_id)REFERENCES ciudades(id)
4.Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).
select * from public.usuarios 
left join public.ciudades 
on public.usuarios.id= public.ciudades.id
5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).
select * from public.usuarios 
inner join public.ciudades 
on public.usuarios.id= public.ciudades.id
