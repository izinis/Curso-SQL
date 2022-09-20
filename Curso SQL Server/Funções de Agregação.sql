USE SisDep;


--Retornar o total geral de salários pagos
SELECT SUM(SALARIO) AS [TOTAL DE SALÁRIOS] FROM Funcionario;

--Retornar a média de salários
SELECT AVG(SALARIO) AS [MÉDIA SALÁRIAL] FROM Funcionario;

-- Mais de uma agregação no mesmo coando SELECT

SELECT
	MAX(Salario) AS [MAIOR SALÁRIO],
	MIN(Salario) AS [MENOR SALARIO],
	COUNT(Salario) AS [Nº DE FUNCIONÁRIOS] 
FROM Funcionario


USE SysConVendas;

SELECT * FROM Dados;

SELECT
	COUNT(Vendedor) AS CONTAGEM_COLUNA
FROM Dados;


SELECT
	COUNT(Pedido) AS CONTAGEM_COLUNA 
FROM Dados;

SELECT
	COUNT(*) AS CONTAGEM_LINHA
FROM Dados;