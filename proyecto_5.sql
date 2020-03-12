--1. Sentencia que utilice funciones de fecha y número.
--Muestre duracion de las partidas en minutos exactos
-- y hace cuantos meses fueron 

SELECT game_id, ROUND(game_lenght) AS "Minutos de duracion", ROUND((sysdate-game_date)/12) AS "Meses desde hoy hasta esta partida"
FROM proyecto07.PARTIDA;

--2. Sentencia que incluya mínimo 2 funciones numéricas anidadas y utilice 2 tablas (Debe crearse como una vista que se llame: v_proyecto2).
-- Obtener el nombre del heroes y la habilidad con el coeficiente LN del daño de su reduccion por armadura
CREATE OR REPLACE VIEW proyecto07.v_proyecto2 AS
SELECT HEROES.hero_name, HABILIDADES.hability_name, ABS(ROUND(HABILIDADES.hability_damage-COS(HABILIDADES.hability_damage)*HABILIDADES.hability_damage)) AS "Reduccion con armadura"
FROM proyecto07.HEROES JOIN proyecto07.HABILIDADES
ON HEROES.hero_id = HABILIDADES.hero_id
WITH READ ONLY;

SELECT * FROM v_proyecto2;

--3. Sentencia que incluya mínimo 3 funciones de caracteres anidadas y utilice 3 tablas
-- Obtener los nombres de los lenguajes sin espacios en blacos a la derecha o izquierda con la primera leta en mayuscula, de partidas
-- del 2017 de usuario Jack
SELECT (RTRIM(LTRIM(INITCAP(LOWER(AC.lenguaje))))) AS "Nombre de lenguaje sin espacios en blanco"
FROM proyecto07.PARTIDA P, proyecto07.USUARIOS U, proyecto07.ARCHIVO_CODIGO AC
WHERE P.game_id = U.game_id AND AC.user_id = U.user_id AND P.game_date > TO_DATE('2017/01/01 1:00:00', 'YYYY/MM/DD HH24:MI:SS')
AND P.game_date < TO_DATE('2017/12/31 12:59:59', 'YYYY/MM/DD HH24:MI:SS') AND U.user_name = 'Jack';

--4. Sentencia que muestre la utilidad de la función NVL2 (Debe crearse como una vista que se llame: v_proyecto4).
--Devuelve una vista del nombre del lenguaje de los archivos de codigo, de lo contario si es nulo dice que no especificado.
CREATE OR REPLACE VIEW v_proyecto4 AS
SELECT NVL2(lenguaje,lenguaje,'No especificado') AS "Lenguaje Arreglado"
FROM proyecto07.ARCHIVO_CODIGO
WITH READ ONLY;

SELECT * FROM v_proyecto4;

--5. Realizar una sentencia con cada tipo de Join:
--Equijoin: con las tablas 1 y 3.
--Oracle propietario
-- nombres de usuarios sea igual al de habilidades
SELECT u.user_name
FROM proyecto07.HABILIDADES h, proyecto07.USUARIOS u
WHERE h.hability_name = u.user_name;

--Non-equijoin: con las tablas 1 y 2. (Debe crearse como una vista que se llame: v_proyecto5).
-- nombres de archivos y nombres de habilidades cuyo id este entre 3000 y 3005
CREATE OR REPLACE VIEW v_proyecto5 AS
SELECT AC.file_name, H.hability_name
FROM proyecto07.ARCHIVO_CODIGO AC, proyecto07.HABILIDADES H
WHERE AC.archivo_id BETWEEN 3000 AND 3005
WITH READ ONLY; 

SELECT * FROM v_proyecto5;

--Outer Join (right o left): con las tablas 2 y 4.
-- archivos_id de archivos codigo que no estan en el codigo de partida game_id. outer join derecho
SELECT ac.archivo_id
FROM proyecto07.ARCHIVO_CODIGO ac, proyecto07.PARTIDA p
WHERE p.game_id (+) = ac.archivo_id;

--Self Join: con la tabla 5.
-- Id Mapas y nombre de mapas donde los id sean iguales.
SELECT m1.map_id, m2.map_name
FROM proyecto07.MAPAS m1, proyecto07.MAPAS m2
WHERE m1.map_id = m2.map_id;

--SQL: 1999
--Cross Join: con las tablas 2 y 3.
-- Producto cartesiano entre las tablas 2 y 3
SELECT u.user_id, ac.archivo_id
FROM proyecto07.USUARIOS u
CROSS JOIN proyecto07.ARCHIVO_CODIGO ac;

--Natural Join: con las tablas 4 y 6.
--id, nombre y fecha cuando un heroe fue jugado en una partida
SELECT hero_id, hero_name, TO_CHAR(game_date) AS "Fecha"
FROM proyecto07.HEROES
NATURAL JOIN proyecto07.PARTIDA;

--Clausula USING: con las tablas 2 y 4.
-- Archivo_id, id de mapa y leguajes en comun de partida y archivo de codigo
SELECT archivo_id, map_id, lenguaje
FROM proyecto07.ARCHIVO_CODIGO JOIN proyecto07.PARTIDA
USING (lenguaje);

--Clausula ON: con las tablas 1 y 3.
-- nombre de usuarios que tengan mismos nombres que habilidades
SELECT u.user_name
FROM proyecto07.HABILIDADES h JOIN proyecto07.USUARIOS u
ON (h.hability_name = u.user_name);

--6. Realizar una sentencia que posea subconsultas y funciones de grupo. La misma debe navegar desde la tabla 1 hasta la tabla 4.
-- Mostrar el nombre, daño, heroe, y duracion de la partida de la habilidad que hace mas daño
SELECT  h.hability_name, h.hability_damage, he.hero_name, g.game_lenght
FROM proyecto07.HABILIDADES h, proyecto07.HEROES he, proyecto07.PARTIDA g
WHERE h.hability_damage = (SELECT MAX(hability_damage) from proyecto07.HABILIDADES GROUP BY h.hability_id) AND he.hero_id = h.hero_id AND g.game_id = he.game_id;

--7. Cree una sentencia que utilice: COUNT, MIN y la cláusula HAVING, la misma debe navegar desde la tabla 2 hasta la tabla 4.
--Cuenta cuantos leguajes hay de archivos de codigos que son usados por usuarios que juegan una partida cuyo id de partida sea mayor a 2,
--y muestra el minimo id de partida por cantidad de leguaje
SELECT COUNT(ac.Lenguaje), MIN(p.game_id)
FROM proyecto07.ARCHIVO_CODIGO AC 
JOIN proyecto07.USUARIOS U ON (AC.user_id = U.user_id AND AC.user_login = U.user_login)
JOIN proyecto07.PARTIDA p ON (p.game_id = u.game_id)
GROUP BY p.game_id
HAVING p.game_id > 2;

--8. Construya una vista en línea que involucre las tablas 1, 2, 3 y 4.
-- Muestra el codigo de archivo la fecha de login del user del archivo y el id habilidad relacionada con ese archivo.
SELECT ac.archivo_id, to_char(ac.user_login) AS "Fecha", h.hability_id
FROM proyecto07.ARCHIVO_CODIGO AC 
JOIN proyecto07.USUARIOS U ON (AC.user_id = U.user_id AND AC.user_login = U.user_login)
JOIN proyecto07.PARTIDA p ON (p.game_id = u.game_id)
JOIN (SELECT * FROM proyecto07.HABILIDADES) h ON (AC.hability_id = h.hability_id);







