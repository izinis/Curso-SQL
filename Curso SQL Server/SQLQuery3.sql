-- tabela temporária local (CREATE TABLE)


USE Clientes;

CREATE TABLE #Clientes
(
	codigo	int,
	nomeCliente	varchar(50),
	cadastro	date

);


SELECT * FROM #Clientes;

INSERT INTO #Clientes
VALUES
(1,'Hélio','207/01/05'),
(2,'Nícolas','2017/01/010');

--------------------------
USE SysConVendas;

SELECT * FROM Dados;

SELECT * 
INTO #Pesquisa1
FROM Dados;

SELECT * FROM #Pesquisa1;

-- Filtros
SELECT * FROM #Pesquisa1
WHERE Mes = 'AGOSTO';


--Atualizações
UPDATE #Pesquisa1
SET Vendedor = 'Hélio'
WHERE PEDIDO = 21794;