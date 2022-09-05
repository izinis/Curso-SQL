USE Concessionaria;

EXEC sp_help tblModelos;

CREATE TABLE tblEstoque
(
	idEstoque		int		identity
	Constraint PK_tblEstoque_idEstoque
	Primary Key (idEstoque),

	idModelo		int		not null
	Constraint FK_tblEstoquetblModelos
	Foreign Key (idModelo)
	References tblModelos(idModelo),

	dataEntrada		date		Default GETDATE(),

	precoEstoque		money		not null
	Constraint CK_tblEstoque_precoEstoque
	CHECK(precoEstoque >= 10000 AND precoEstoque <= 200000)

);

--Nova coluna
ALTER TABLE tblEstoque
ADD placa nChar(8) not null;


--Alterar o tamanho de uma coluna
ALTER TABLE tblEstoque
ALTER COLUMN placa nChar(7) Null;


EXEC sp_help tblEstoque;


--Excluir
ALTER TABLE tblEstoque
DROP COLUMN placa;



EXEC sp_help TB_ITENSPEDIDO;

EXEC sp_help TB_PRODUTO;
ID_PRODUTO int

EXEC sp_help TB_PEDIDO;
NUM_PEDIDO int

EXEC sp_help TB_COR;
CODCOR smallint

EXEC sp_help TB_UNIDADE;

USE PEDIDOS_VAZIO;
