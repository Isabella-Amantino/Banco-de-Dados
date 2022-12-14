CREATE DATABASE DB_SERVICOS_RH;

USE DB_SERVICOS_RH;

CREATE TABLE TB_COLABORADORES(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(1000),
IDADE INT,
SETOR CHAR(255),
CARGO CHAR(255),
PRIMARY KEY(ID)
);

INSERT INTO TB_COLABORADORES (NOME,IDADE,SETOR,CARGO) VALUES ("JOANA",47,"ADMINISTRATIVO","GERENTE");
INSERT INTO TB_COLABORADORES (NOME,IDADE,SETOR,CARGO) VALUES ("PEDRO",35,"VENDAS","ANALISTA PLENO");
INSERT INTO TB_COLABORADORES (NOME,IDADE,SETOR,CARGO) VALUES ("ANA LUIZA",23,"LOGÍSTICA","ESTAGIÁRIA");
INSERT INTO TB_COLABORADORES (NOME,IDADE,SETOR,CARGO) VALUES ("ANDERSON",17,"RECURSOS HUMANOS","JOVEM APRENDIZ");
INSERT INTO TB_COLABORADORES (NOME,IDADE,SETOR,CARGO) VALUES ("LUANA",24,"ADMINISTRATIVO","ANALISTA JÚNIOR");

ALTER TABLE TB_COLABORADORES ADD SALARIO DECIMAL(9,2);

UPDATE TB_COLABORADORES SET SALARIO = 8000.00 WHERE ID = 1;
UPDATE TB_COLABORADORES SET SALARIO = 6500.00 WHERE ID = 2;
UPDATE TB_COLABORADORES SET SALARIO = 1587.69 WHERE ID = 3;
UPDATE TB_COLABORADORES SET SALARIO = 999.00 WHERE ID = 4;
UPDATE TB_COLABORADORES SET SALARIO = 4000.00 WHERE ID = 5;

SELECT*FROM TB_COLABORADORES WHERE SALARIO > 2000.00;
SELECT*FROM TB_COLABORADORES WHERE SALARIO < 2000.00;

UPDATE TB_COLABORADORES SET SALARIO = 1100 WHERE ID = 4;

SELECT*FROM TB_COLABORADORES;


