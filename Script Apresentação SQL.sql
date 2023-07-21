-- Criação do banco de dados
CREATE DATABASE BANCO_DO_NETO;

-- Cria a tabela Turma informando os campos e o tipo de dado
-- Primary key determina que o campo é a chave primária (identificadora) da tabela
CREATE TABLE TURMA (
	ID INTEGER PRIMARY KEY,
	DESCRICAO VARCHAR(30),
	DATA_TURMA DATE,
	STATUS CHAR
);

-- Cria a tabela Aluno
CREATE TABLE ALUNO (
	ID INTEGER PRIMARY KEY,
	NOME VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(30),
	SEXO CHAR,
	ALTURA DECIMAL(3, 2),
	ID_TURMA INTEGER
);

-- Cria uma chave estrangeira na tabela Aluno, estabelecendo uma relação entre a tabela de Aluno com Turma
-- O campo ID_TURMA é a chave estrangeira na tabela Aluno que referencia o campos ID da tabela Turma
ALTER TABLE ALUNO
ADD CONSTRAINT FK_TURMA
FOREIGN KEY(ID_TURMA)
REFERENCES TURMA(ID);

-- Inserindo dados na tabela Turma
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (1, 'TURMA 1', '2023-07-21', 'A');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (2, 'TURMA 2', '2023-07-20', 'I');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (3, 'TURMA 3', '2023-07-19', 'I');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (4, 'TURMA 4', '2023-06-15', 'A');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (5, 'TURMA 5', '2023-04-21', 'A');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (6, 'TURMA 6', '2023-07-21', 'A');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (7, 'TURMA 7', '2023-06-22', 'I');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (8, 'TURMA 8', '2023-07-02', 'A');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (9, 'TURMA 9', '2023-07-10', 'I');
INSERT INTO TURMA (ID, DESCRICAO, DATA_TURMA, STATUS) VALUES (10, 'TURMA 10', '2023-04-30', 'A');

-- Inserindo dados na tabela Aluno
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (1, 'Sávio', 'Sávio@gmail.com', 'M', '1.67', 1);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (2, 'Silas', 'Silas@gmail.com', 'M', '1.80', 2);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (3, 'Gracinha', 'Gracinha@gmail.com', 'M', '1.77', 2);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (4, 'Fofinho', 'Fofinho@gmail.com', 'M', '1.60', 3);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (5, 'Renan', 'Renan@gmail.com', 'M', '1.70', 1);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (6, 'Bruno', 'Bruno@gmail.com', 'M', '1.70', 1);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (7, 'Nayane', 'Nayane@gmail.com', 'F', '1.67', 3);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (8, 'Karine', 'Karine@gmail.com', 'F', '1.69', 3);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (9, 'João', 'João@gmail.com', 'M', '1.69', 4);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA, ID_TURMA) VALUES (10, 'Natan', 'Natan@gmail.com', 'M', '1.67', 5);
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA) VALUES (11, 'Pina', 'Pina@gmail.com', 'M', '1.72');
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA) VALUES (12, 'Deusdete', 'Deusdete@gmail.com', 'M', '1.81');
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA) VALUES (13, 'Jane', 'Jane@gmail.com', 'F', '1.74');
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA) VALUES (14, 'Luiz', 'Luiz@gmail.com', 'M', '1.67');
INSERT INTO ALUNO (ID, NOME, EMAIL, SEXO, ALTURA) VALUES (15, 'Alexandre', 'Alexandre@gmail.com', 'M', '1.67');

-- Seleciona todas as informações da tabela Turma
SELECT * FROM TURMA;

-- Seleciona todas as informações da tabela Aluno
SELECT * FROM ALUNO;

-- Seleciona somente dados que possuem relação nas duas tabelas (INNER JOIN)
SELECT A.ID,
	   A.NOME,
       A.EMAIL,
       A.SEXO,
       A.ALTURA,
       T.ID AS ID_TURMA,
       T.DESCRICAO,
       T.DATA_TURMA,
       T.STATUS
FROM ALUNO A INNER JOIN TURMA T ON A.ID_TURMA = T.ID;

-- Seleciona os dados dando preferência para a tabela à esquerda da consulta (LEFT JOIN)
SELECT A.ID,
	   A.NOME,
       A.EMAIL,
       A.SEXO,
       A.ALTURA,
       T.ID AS ID_TURMA,
       T.DESCRICAO,
       T.DATA_TURMA,
       T.STATUS
FROM ALUNO A LEFT JOIN TURMA T ON A.ID_TURMA = T.ID;

-- Seleciona os dados dando preferência para a tabela à direita da consulta (RIGHT JOIN)
SELECT A.ID,
	   A.NOME,
       A.EMAIL,
       A.SEXO,
       A.ALTURA,
       T.ID AS ID_TURMA,
       T.DESCRICAO,
       T.DATA_TURMA,
       T.STATUS
FROM ALUNO A RIGHT JOIN TURMA T ON A.ID_TURMA = T.ID;