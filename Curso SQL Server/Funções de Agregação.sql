USE SisDep;


--Retornar o total geral de sal�rios pagos
SELECT SUM(SALARIO) AS [TOTAL DE SAL�RIOS] FROM Funcionario;

--Retornar a m�dia de sal�rios
SELECT AVG(SALARIO) AS [M�DIA SAL�RIAL] FROM Funcionario;

-- Mais de uma agrega��o no mesmo coando SELECT

SELECT
	MAX(Salario) AS [MAIOR SAL�RIO],
	MIN(Salario) AS [MENOR SALARIO],
	COUNT(Salario) AS [N� DE FUNCION�RIOS] 
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