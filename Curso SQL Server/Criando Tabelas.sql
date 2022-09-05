USE Concessionaria;

-- Tabelas

CREATE TABLE tblMarcas(
	idMarca		int				identity		primary key,
	nomeMarca	nchar(10)		not null		unique
);	

-- visualizando a estrutura de tabelas
EXEC sp_help tblMarcas;

CREATE TABLE tblModelos
(
	idModelo		int			identity,
	Constraint		Pk_tblModelos_IdModelo
	Primary Key		(idModelo),

	--FK
	idMarca			int			not null
	Constraint FK_yblModels_tblMarcas_idMarca
	Foreign Key (idMarca)
	References tblMarcas(idMarca),

	nomeModelo		nchar(30)	not null
	Constraint UQ_tblModelos_nomeModelo
	Unique	(nomeModelo)
);

USE Concessionaria;


USE SisDep;

SELECT * INTO tblFuncionarios_tmp FROM Funcionario;

SELECT * FROM tblFuncionarios_tmp WHERE Salario > 5000;

DELETE FROM tblFuncionarios_tmp WHERE Salario > 5000;

SELECT * FROM tblFuncionarios_tmp WHERE 

EXEC sp_help tblFuncionario_tmp;

SELECT * FROM tblFuncionarios_tmp


TRUNCATE TABLE tblFuncionarios_tmp;

DROP TABLE tblFuncionarios_tmp;

USE PEDIDOS_VENDA;
CREATE TABLE TB_PRODUTO
(
	COD_PRODUTO INT	IDENTITY	PRIMARY KEY,
	NOME_PRODUTO VARCHAR(40),
	COD_UN_MED	INT,
	COD_CATEGORIA INT,
	QTD_ESTOQUE NUMERIC,
	QTD_MIN NUMERIC,	
	PRECO_CUSTO NUMERIC,
	PRECO_VENDA NUMERIC,
	CARACTERISTICAS TEXT,
	FOTO BINARY
);

CREATE TABLE TB_UNIDADE
(
	COD_UNIDADE INT	IDENTITY	PRIMARY KEY,
	NOME_UNIDADE VARCHAR(40)
)


ALTER TABLE TB_UNIDADE
ADD  NUMERIC;

CREATE TABLE TB_CATEGORIA
(
	COD_CATEGORIA INT IDENTITY PRIMARY KEY,
	NOME_CATEGORIA VARCHAR (40)
);
SELECT * FROM TB_CATEGORIA;

ALTER TABLE TB_UNIDADE
DROP COLUMN METROS,KG, DUZIAS;

INSERT INTO TB_UNIDADE (NOME_UNIDADE) VALUES ('PEÇAS'),('METROS'),('QUILOGRAMAS'),('DÚZIAS'),('PACOTE'),('CAIXA');

INSERT INTO TB_CATEGORIA (NOME_CATEGORIA) VALUES ('MOUSE'),('PEN-DRIVE'),('MONITOR DE VÍDEO'),('TECLADO'),('CPU'),('TECLADO'),('CPU'),('CABO DE REDE');


SELECT * FROM TB_PRODUTO;


INSERT INTO TB_PRODUTO (NOME_PRODUTO, COD_UN_MED, COD_CATEGORIA, QTD_ESTOQUE, QTD_MIN, PRECO_CUSTO, PRECO_VENDA)
OUTPUT inserted.NOME_PRODUTO AS PRODUTO, inserteD.COD_UN_MED AS UNIDADE, inserted.COD_CATEGORIA AS CATEGORIA, inserted.QTD_ESTOQUE AS QUANTIDADE, inserted.QTD_MIN AS QTDMINIMA, inserted.PRECO_CUSTO AS CUSTO, inserted.PRECO_VENDA AS VENDA
VALUES 
('Caneta Azul', 1,1,150,40,0.50,0.75),
('Caneta Verde', 1,1,50,40,0.50,0.75),
('Caneta Vermelha', 1,1,80,35,0.50,0.75),
('Lápis', 1,1,400,80,0.50,0.80),
('Caneta Azul', 1,1,150,40,0.50,0.75),
('Régua', 1,1,40,10,1,1.50);


