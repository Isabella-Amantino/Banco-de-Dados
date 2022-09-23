CREATE DATABASE DB_ECOMMERCE;

USE DB_ECOMMERCE;

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
NOME CHAR(255),
COR CHAR(255),
TAMANHO CHAR(255),
PRECO DECIMAL(6,2),
PRIMARY KEY(ID)
);

INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("CADERNO UNIVERSITÁRIO","ESTAMPA GALÁXIA","GRANDE",39.99);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("FICHÁRIO","ESTAMPA HARRY POTTER","GRANDE",99.75);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("CARTELA DE CANETA BIC","AZUL","PONTA COMUM",5.45);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("BORRACHA ESCOLAR","BRANCA","NORMAL",0.99);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("TESOURA SEM PONTA","PRETA","INFANTIL",12.25);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("AGENDA 2022","ROSA","M",32.99);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("MOCHILA ESCOLAR","PUCCA","INFANTIL",199.99);
INSERT INTO  TB_PRODUTOS (NOME,COR,TAMANHO,PRECO) VALUES ("ESTOJO","LARANJA","MEDIO",47.90);

SELECT*FROM TB_PRODUTOS WHERE PRECO > 500;
SELECT*FROM TB_PRODUTOS WHERE PRECO < 500;

UPDATE TB_PRODUTOS SET COR = "DEGRADÊ ROSA" WHERE ID = 6;

SELECT*FROM TB_PRODUTOS;
 

