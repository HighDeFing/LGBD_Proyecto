INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 30.02, TO_DATE('2017/01/15 10:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 45.42, TO_DATE('2018/01/16 21:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 30.25, TO_DATE('2018/02/16 12:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 40.18, TO_DATE('2019/02/16 13:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 12.23, TO_DATE('2019/02/16 15:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 31.47, TO_DATE('2019/02/16 17:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 50.26, TO_DATE('2019/03/16 19:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 60.41, TO_DATE('2019/03/16 21:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 80.21, TO_DATE('2019/03/17 12:30:25', 'YYYY/MM/DD HH:MI:SS'));
INSERT INTO PARTIDA VALUES (partida_primary_sequence.NEXTVAL, 39.59, TO_DATE('2019/05/17 19:30:25', 'YYYY/MM/DD HH:MI:SS'));

INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Islandia', 'Free for all', 1);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Marte', 'Conquest', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Cuba', 'Disarm', 3);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Grieta', 'Battle Royale', 4);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Dust_2', '5vs5', 3);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Mercado', 'Conquest', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Assault', 'Disarm', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Iran', 'Disarm', 1);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Primavera', 'Conquest', 2);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Japon', 'Free for all', 3);
INSERT INTO MAPAS VALUES (mapas_primary_sequence.NEXTVAL, 'Cocina', 'Free for all', 4);

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

INSERT INTO USUARIOS VALUES (2001, 'Jack', TO_DATE('2018/05/17 19:29:25', 'YYYY/MM/DD HH:MI:SS'), 1);
INSERT INTO USUARIOS VALUES (2002, 'Marco', TO_DATE('2018/05/17 19:29:25', 'YYYY/MM/DD HH:MI:SS'), 2);
INSERT INTO USUARIOS VALUES (2003, 'Heider', TO_DATE('2018/05/17 19:29:25', 'YYYY/MM/DD HH:MI:SS'), 1);
INSERT INTO USUARIOS VALUES (2004, 'Juan', TO_DATE('2018/05/17 19:29:25', 'YYYY/MM/DD HH:MI:SS'), 3);
INSERT INTO USUARIOS VALUES (2005, 'Killer', TO_DATE('2018/05/17 19:29:25', 'YYYY/MM/DD HH:MI:SS'), 4);

-- KEY, NAME, HABILIDADES, MAPAS, USUARIO
INSERT INTO ARCHIVO_CODIGO VALUES (3001, 'Python', 1, 1, 2001);
INSERT INTO ARCHIVO_CODIGO VALUES (3002, 'C++', 1, 1, 2001);
INSERT INTO ARCHIVO_CODIGO VALUES (3003, 'C', 2, 1, 2003);
INSERT INTO ARCHIVO_CODIGO VALUES (3004, 'Java', 3, 2, 2004);
INSERT INTO ARCHIVO_CODIGO VALUES (3005, 'Javascript', 1, 3, 2005);
INSERT INTO ARCHIVO_CODIGO VALUES (3006, 'Visual Basic', 2, 1, 2001);