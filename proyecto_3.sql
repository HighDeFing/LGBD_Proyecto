--DISABLE foreign keys for insertion
ALTER TABLE HEROES DISABLE CONSTRAINT FK_heroes_Partida_game_id;
ALTER TABLE HABILIDADES DISABLE CONSTRAINT FK_habilidades_heroes_hero_id;
ALTER TABLE MAPAS DISABLE CONSTRAINT FK_mapas_partida_game_id;
ALTER TABLE USUARIOS DISABLE CONSTRAINT FK_usuarios_partida_game_id;
ALTER TABLE ARCHIVO_CODIGO DISABLE CONSTRAINT FK_ARCHIVO_CODIGO_habilidades_hability_id;
ALTER TABLE ARCHIVO_CODIGO DISABLE CONSTRAINT FK_ARCHIVO_CODIGO_mapas_map_id;
ALTER TABLE ARCHIVO_CODIGO DISABLE CONSTRAINT FK_ARCHIVO_CODIGO_usuarios_user_id;

INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 30.02, TO_DATE('2017/01/15 10:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Free for all','Python');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 45.42, TO_DATE('2018/01/16 4:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Conquest','C++');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 30.25, TO_DATE('2018/02/16 10:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Disarm','C');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 40.18, TO_DATE('2019/02/16 9:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Battle Royale','Java');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 12.23, TO_DATE('2019/02/16 10:30:25', 'YYYY/MM/DD HH24:MI:SS'),'5vs5','Javascript');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 31.47, TO_DATE('2019/02/16 11:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Conquest',NULL);
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 50.26, TO_DATE('2019/03/16 12:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Disarm',NULL);
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 60.41, TO_DATE('2019/03/16 6:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Disarm','Lenguaje no soportado');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 80.21, TO_DATE('2019/03/17 12:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Conquest','Cassandra');
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 39.59, TO_DATE('2019/05/17 5:30:25', 'YYYY/MM/DD HH24:MI:SS'),'Free for all','R');

INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Islandia', 'Desert', 1);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Marte', 'Ocean', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Cuba', 'Montain', 3);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Grieta', 'Forest', 4);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Dust_2', 'Urban', 3);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Mercado', 'Sub-Urban', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Assault', 'Favela', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Iran', 'Ocean', 1);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Primavera', 'Conquest', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Japon', 'Urban', 3);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Cocina', 'Urban', 4);

INSERT INTO HEROES VALUES (1001, 'Medusa', 'Dire', 1);
INSERT INTO HEROES VALUES (1002, 'Juggernaut', 'Radiant', 1);
INSERT INTO HEROES VALUES (1003, 'Luna', 'Radiant', 2);
INSERT INTO HEROES VALUES (1004, 'Lion', 'Dire', 8);
INSERT INTO HEROES VALUES (1005, 'Shadow Deamon', 'Dire', 3);

INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Stone Gaze', 0, 1001);
INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Mistic Snake', 300, 1001);
INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Battle Fury', 200, 1002);
INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Healing Ward', 0, 1002);
INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Eclipse', 1000, 1003);
INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Death Finger', 1400, 1004);
INSERT INTO HABILIDADES VALUES (habilidades_primary_sequence.NEXTVAL, 'Shadow Raze', 300, 1005);

INSERT INTO USUARIOS VALUES (2001, 'Jack', TO_DATE('2018/05/17 3:29:25', 'YYYY/MM/DD HH24:MI:SS'), 1);
INSERT INTO USUARIOS VALUES (2001, 'Jack', TO_DATE('2019/05/17 4:29:25', 'YYYY/MM/DD HH24:MI:SS'), 3);
INSERT INTO USUARIOS VALUES (2001, 'Jack', TO_DATE('2019/05/19 4:29:25', 'YYYY/MM/DD HH24:MI:SS'), 6);
INSERT INTO USUARIOS VALUES (2002, 'Marco', TO_DATE('2018/05/17 4:29:25', 'YYYY/MM/DD HH24:MI:SS'), 2);
INSERT INTO USUARIOS VALUES (2003, 'Heider', TO_DATE('2018/05/17 5:29:25', 'YYYY/MM/DD HH24:MI:SS'), 1);
INSERT INTO USUARIOS VALUES (2004, 'Juan', TO_DATE('2018/05/17 6:29:25', 'YYYY/MM/DD HH24:MI:SS'), 3);
INSERT INTO USUARIOS VALUES (2005, 'Killer', TO_DATE('2018/05/17 7:29:25', 'YYYY/MM/DD HH24:MI:SS'), 4);
INSERT INTO USUARIOS VALUES (2006, 'Shadow Raze', TO_DATE('2016/05/12 3:29:25', 'YYYY/MM/DD HH24:MI:SS'), 1);
INSERT INTO USUARIOS VALUES (2007, 'Eclipse', TO_DATE('2015/05/12 3:29:25', 'YYYY/MM/DD HH24:MI:SS'), 5);

-- KEY, DATE_ARCHIVED, NAME_LENGUAGE, NAME_FILE, HABILIDADES, MAPAS, USUARIO
INSERT INTO ARCHIVO_CODIGO VALUES (3001,TO_DATE('2018/05/17 3:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'Python', 'Login.py' 1, 1, 2001, TO_DATE('2018/05/17 3:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3002,TO_DATE('2018/05/17 3:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'C++', 'Recargar.cpp' 1, 1, 2001, TO_DATE('2019/05/17 4:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3003,TO_DATE('2018/05/22 4:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'C', 'Stone Gaze.c', 2, 1, 2003, TO_DATE('2018/05/17 5:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3004,TO_DATE('2018/04/14 5:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'Java', 'webservice.java', 3, 2, 2004, TO_DATE('2018/05/17 6:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3005,TO_DATE('2018/06/13 6:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'Javascript', 'Mecanicas.js', 1, 3, 2005, TO_DATE('2018/05/17 7:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3006,TO_DATE('2018/02/12 7:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'Visual Basic', 'Correr.net', 2, 1, 2001, TO_DATE('2019/05/19 4:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3007,TO_DATE('2018/01/14 8:29:25', 'YYYY/MM/DD HH24:MI:SS'), 'Visual Basic2', 'Trotat.net', 2, 1, 2001, TO_DATE('2019/05/19 4:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3008,TO_DATE('2018/09/18 1:29:25', 'YYYY/MM/DD HH24:MI:SS'), NULL, NULL, 2, 1, 2002, TO_DATE('2018/05/17 4:29:25', 'YYYY/MM/DD HH24:MI:SS'));
INSERT INTO ARCHIVO_CODIGO VALUES (3008,TO_DATE('2018/10/18 3:29:25', 'YYYY/MM/DD HH24:MI:SS'), NULL, 'Capacidad.net', 2, 1, 2002, TO_DATE('2018/05/17 4:29:25', 'YYYY/MM/DD HH24:MI:SS'));

--ENABLE foreign keys again
ALTER TABLE HEROES ENABLE CONSTRAINT FK_heroes_Partida_game_id;
ALTER TABLE HABILIDADES ENABLE CONSTRAINT FK_habilidades_heroes_hero_id;
ALTER TABLE MAPAS ENABLE CONSTRAINT FK_mapas_partida_game_id;
ALTER TABLE USUARIOS ENABLE CONSTRAINT FK_usuarios_partida_game_id;
ALTER TABLE ARCHIVO_CODIGO ENABLE CONSTRAINT FK_ARCHIVO_CODIGO_habilidades_hability_id;
ALTER TABLE ARCHIVO_CODIGO ENABLE CONSTRAINT FK_ARCHIVO_CODIGO_mapas_map_id;
ALTER TABLE ARCHIVO_CODIGO ENABLE CONSTRAINT FK_ARCHIVO_CODIGO_usuarios_user_id;