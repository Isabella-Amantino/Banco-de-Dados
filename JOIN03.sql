-- EXERCÍCIO 3 - LISTA 2 BD

CREATE DATABASE DB_FARMACIA_BEM_ESTAR;
USE DB_FARMACIA_BEM_ESTAR;

CREATE TABLE TB_CATEGORIAS (
ID BIGINT AUTO_INCREMENT,
DESCRICAO VARCHAR(255),
CORREDOR INT,
PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
PRODUTO VARCHAR(255) NOT NULL,
PRECO DECIMAL(6,2) NOT NULL,
QTESTOQUE INT NOT NULL,
RECEITUARIO VARCHAR(255),
CATEGORIA_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(CATEGORIA_ID) REFERENCES TB_CATEGORIAS(ID)
);

INSERT INTO TB_CATEGORIAS (DESCRICAO,CORREDOR) VALUES ("REMEDIO",1);
INSERT INTO TB_CATEGORIAS (DESCRICAO,CORREDOR) VALUES ("CUIDADOS COM A PELE",2);
INSERT INTO TB_CATEGORIAS (DESCRICAO,CORREDOR) VALUES ("CUIDADOS COM O BEBE",3);
INSERT INTO TB_CATEGORIAS (DESCRICAO,CORREDOR) VALUES ("HIGIENE BUCAL",4);
INSERT INTO TB_CATEGORIAS (DESCRICAO,CORREDOR) VALUES ("CUIDADOS COM O CABELO",5);

INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("DIPIRONA",10.59,20,"NAO NECESSARIO",1);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("ESFOLIANTE FACIAL",21.52,50,"NAO NECESSARIO",2);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("FRALDA",54.47,12,"NAO NECESSARIO",3);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("ESCOVA DE DENTE",17.00,33,"NAO NECESSARIO",4);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("KIT SHAMPOO E CONDICIONADOR",39.90,2,"NAO NECESSARIO",5);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("AMOXICILINA",24.45,10,"NECESSARIO",1);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("TYLENOL",29.99,14,"NAO NECESSARIO",1);
INSERT INTO TB_PRODUTOS (PRODUTO,PRECO,QTESTOQUE,RECEITUARIO,CATEGORIA_ID) VALUES ("PASTA DE DENTE",2.39,40,"NAO NECESSARIO",4);

SELECT*FROM TB_PRODUTOS WHERE PRECO > 50.00;
SELECT*FROM TB_PRODUTOS WHERE PRECO >= 5.00 AND PRECO <= 60.00;
SELECT*FROM TB_PRODUTOS WHERE PRODUTO LIKE "%C%";
SELECT*FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT*FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE TB_CATEGORIAS.DESCRICAO =  "CUIDADOS COM A PELE";
