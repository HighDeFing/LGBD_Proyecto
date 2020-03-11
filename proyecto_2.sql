


CREATE TABLE HEROES
(
    hero_id number PRIMARY KEY,
    hero_name varchar2(30),
    hero_legion varchar2(30),
    game_id number,
    CONSTRAINT FK_game_id_heroes FOREIGN KEY (game_id)
    REFERENCES Partida(game_id)
)TABLESPACE repositorio_tablas;

CREATE TABLE HABILIDADES
(
    hability_id number PRIMARY KEY,
    hability_name varchar2(30),
    hability_damage number(10),
    hero_id number,
    CONSTRAINT FK_hero_id_heroes FOREIGN KEY (hero_id)
    REFERENCES HEROES(hero_id)
) TABLESPACE repositorio_tablas;

CREATE TABLE PARTIDA
(
    game_id number PRIMARY KEY,
    game_lenght number,
    game_date date,
    game_mode varchar2(20)
)TABLESPACE repositorio_tablas;

CREATE TABLE MAPAS
(
    map_id number PRIMARY KEY,
    map_name varchar2(30)
    map_type varchar2(20),
    game_id number,
    CONSTRAINT FK_game_id_mapa FOREIGN KEY (game_id)
    REFERENCES PARTIDA(game_id)
)TABLESPACE repositorio_tablas;

CRETE TABLE USUARIOS
(
    user_id number PRIMARY KEY,
    user_name varchar2(30),
    user_login date,
    game_id number,
    CONSTRAINT FK_game_id_usuario FOREIGN KEY (game_id)
    REFERENCES PARTIDA(game_id)
)TABLESPACE repositorio_tablas;

CREATE TABLE ARCHIVO_CODIGO
(
    archivo_id number PRIMARY KEY,
    lenguaje varchar2(30),
    hability_id number,
    map_id number,
    user_id number,
    CONSTRAINT FK_hability_id_habilidades FOREIGN KEY (hability_id)
    REFERENCES HABILIDADES(hability_id),
    CONSTRAINT FK_map_id_mapas FOREIGN KEY (map_id)
    REFERENCES MAPAS(map_id),
    CONSTRAINT FK_user_id_usuario FOREIGN KEY (user_id)
    REFERENCES USUARIOS(user_id)
)TABLESPACE repositorio_tablas;

CREATE SEQUENCE habilidades_primary_sequence
    MINVALUE 1
    MAXVALUE 999999999999999999999999999
    START WITH 1
    INCREMENT BY 1
    CACHE 20;

CREATE SEQUENCE mapas_primary_sequence
    MINVALUE 1
    MAXVALUE 999999999999999999999999999
    START WITH 1
    INCREMENT BY 1
    CACHE 20;

CREATE SEQUENCE partida_primary_sequence
    MINVALUE 1
    MAXVALUE 999999999999999999999999999
    START WITH 1
    INCREMENT BY 1
    CACHE 20;




