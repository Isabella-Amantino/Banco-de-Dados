-- EXERCÍCIO 1 - LISTA 2 BD

CREATE DATABASE DB_GENERATION_GAME_ONLINE;
USE DB_GENERATION_GAME_ONLINE;

CREATE TABLE TB_CLASSES(
ID BIGINT AUTO_INCREMENT,
CLASSE VARCHAR(255),
ELEMENTO VARCHAR(255),
PRIMARY KEY(ID)
);

CREATE TABLE TB_PERSONAGENS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(255),
HABILIDADE VARCHAR(255),
ATAQUE INT NOT NULL,
DEFESA INT NOT NULL,
NIVEL INT NOT NULL,
CLASSE_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(CLASSE_ID) REFERENCES TB_CLASSES(ID)
);

INSERT INTO TB_CLASSES (CLASSE,ELEMENTO) VALUES ("MAGO","AR");
INSERT INTO TB_CLASSES (CLASSE,ELEMENTO) VALUES ("DRUIDA","TODOS ELEMENTOS");
INSERT INTO TB_CLASSES (CLASSE,ELEMENTO) VALUES ("BARBARO","FOGO");
INSERT INTO TB_CLASSES (CLASSE,ELEMENTO) VALUES ("CAVALEIRO","TERRA");
INSERT INTO TB_CLASSES (CLASSE,ELEMENTO) VALUES ("ARQUEIRO","AGUA");

INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("ZADOCK","INTELIGENCIA",1000,900,7,1);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("MEDEA","MAGIA DA NATUREZA",5000,4700,20,2);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("URD","RESISTENCIA",520,600,4,4);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("ARTEMIS","RASTRO INVISIVEL",2000,2100,11,5);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("BJORN","FURIA",1800,1700,8,3);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("RAVENNA","FORMA SELVAGEM",1900,2000,8,2);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("AILA","ATAQUE",5000,4800,28,4);
INSERT INTO TB_PERSONAGENS (NOME,HABILIDADE,ATAQUE,DEFESA,NIVEL,CLASSE_ID) VALUES ("JAFAR","INTELIGENCIA",10000,9000,37,1);

SELECT*FROM TB_PERSONAGENS WHERE ATAQUE > 2000;
SELECT*FROM TB_PERSONAGENS WHERE DEFESA >=1000 AND  DEFESA <=2000;
SELECT*FROM TB_PERSONAGENS WHERE NOME LIKE "%C%";
SELECT*FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSE_ID = TB_CLASSES.ID;
SELECT*FROM TB_PERSONAGENS INNER JOIN TB_CLASSES ON TB_PERSONAGENS.CLASSE_ID = TB_CLASSES.ID WHERE TB_CLASSES.CLASSE = "DRUIDA";


