--Ejecutar como SYS as sysdba
--Instrucciones para eliminar los tablespaces
--Si no estan creados, arrojará un error.
alter session set “_oracle_script“=true;
--DROP TABLESPACE repositorio_tablas INCLUDING CONTENTS AND DATAFILES;

--Instrucciones para crear los tablespaces
CREATE TABLESPACE repositorio_tablas DATAFILE 'df_tablas.DBF' SIZE 50M;

--Instrucciones para eliminar al usuario proyecto07 y todo su contenido
--usar si tienen algun error al eliminar el usuario:
	--alter session set “_oracle_script“=true;
--DROP USER proyecto07 CASCADE;


CREATE USER proyecto07 IDENTIFIED BY a1234;
GRANT ALL PRIVILEGES TO proyecto07;
ALTER USER proyecto07 QUOTA UNLIMITED ON repositorio_tablas;

CONNECT proyecto07/a1234;