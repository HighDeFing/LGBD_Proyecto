--1. Sentencia que utilice funciones de fecha y número.
--Muestre duracion de las partidas en minutos exactos
-- y hace cuantos meses fueron 

SELECT game_id, ROUND(game_lenght) AS "Minutos de duracion", ROUND((sysdate-game_date)/12) AS "Meses desde hoy hasta esta partida"
FROM PARTIDA;

--2. Sentencia que incluya mínimo 2 funciones numéricas anidadas y utilice 2 tablas (Debe crearse como una vista que se llame: v_proyecto2).
-- Obtener el nombre del heroes y la habilidad con el coeficiente LN del daño de su reduccion por armadura
SELECT HEROES.hero_name, HABILIDADES.hability_name, ABS(ROUND(HABILIDADES.hability_damage-LN(HABILIDADES.hability_damage))) AS "Reduccion con armadura"
FROM HEROES INNER JOIN HABILIDADES
ON HEROES.hero_id = HABILIDADES.hero_id;

--3. Sentencia que incluya mínimo 3 funciones de caracteres anidadas y utilice 3 tablas