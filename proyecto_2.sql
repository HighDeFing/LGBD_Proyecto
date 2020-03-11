

DROP TABLE PARTIDA CASCADE CONSTRAINTS;
DROP TABLE HEROES CASCADE CONSTRAINTS;
DROP TABLE MAPAS CASCADE CONSTRAINTS;
DROP TABLE USUARIOS CASCADE CONSTRAINTS;
DROP TABLE HABILIDADES CASCADE CONSTRAINTS;
DROP TABLE ARCHIVO_CODIGO CASCADE CONSTRAINTS;


CREATE TABLE PARTIDA
(
    game_id number PRIMARY KEY,
    game_lenght number,
    game_date date,
    game_mode varchar2(20),
    lenguaje varchar2(30)
)TABLESPACE repositorio_tablas;

CREATE TABLE HEROES
(
    hero_id number PRIMARY KEY,
    hero_name varchar2(30),
    hero_legion varchar2(30),
    game_id number,
    CONSTRAINT FK_heroes_Partida_game_id FOREIGN KEY (game_id)
    REFERENCES Partida(game_id)
)TABLESPACE repositorio_tablas;

CREATE TABLE MAPAS
(
    map_id number PRIMARY KEY,
    map_name varchar2(30),
    map_type varchar2(20),
    game_id number,
    CONSTRAINT FK_mapas_partida_game_id FOREIGN KEY (game_id)
    REFERENCES PARTIDA(game_id)
)TABLESPACE repositorio_tablas;

CREATE TABLE USUARIOS
(
    user_id number,
    user_name varchar2(30),
    user_login date,
    game_id number,
    PRIMARY KEY (user_id,user_login),
    CONSTRAINT FK_usuarios_partida_game_id FOREIGN KEY (game_id)
    REFERENCES PARTIDA(game_id)
)TABLESPACE repositorio_tablas;

CREATE TABLE HABILIDADES
(
    hability_id number PRIMARY KEY,
    hability_name varchar2(30),
    hability_damage number(10),
    hero_id number,
    CONSTRAINT FK_habilidades_heroes_hero_id FOREIGN KEY (hero_id)
    REFERENCES HEROES(hero_id)
) TABLESPACE repositorio_tablas;

CREATE TABLE ARCHIVO_CODIGO
(
    archivo_id number PRIMARY KEY,
    date_archived date,
    lenguaje varchar2(30),
    file_name varchar2(30),
    hability_id number,
    map_id number,
    user_id number,
    user_login date,
    PRIMARY (archivo_id, date_archived),
    CONSTRAINT FK_ARCHIVO_CODIGO_habilidades_hability_id FOREIGN KEY (hability_id)
    REFERENCES HABILIDADES(hability_id),
    CONSTRAINT FK_ARCHIVO_CODIGO_mapas_map_id FOREIGN KEY (map_id)
    REFERENCES MAPAS(map_id),
    CONSTRAINT FK_ARCHIVO_CODIGO_usuarios_user_id FOREIGN KEY (user_id,user_login)
    REFERENCES USUARIOS(user_id,user_login)
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




