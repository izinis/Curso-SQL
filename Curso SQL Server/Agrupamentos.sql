USE SysConVendas;
SELECT * FROM Dados;

SELECT SUM(TOTAL) AS [FATURAMENTO TOTAL] FROM DADOS;


SELECT 
	Cidade, SUM(Total) AS [FATURAMENTO TOTAL]
FROM Dados
GROUP BY Cidade;


SELECT 
	Cidade,Produto, SUM(Total) AS [FATURAMENTO TOTAL],
	COUNT(*) AS [Nº DE OCORRÊNCIAS]
FROM Dados
GROUP BY Cidade, Produto;


SELECT 
	Produto, Cidade,SUM(Total) AS [FATURAMENTO TOTAL],
	COUNT(*) AS [Nº DE OCORRÊNCIAS]
FROM Dados
GROUP BY Cidade, Produto;

--Filtros em Agrupamentos HAVING

SELECT 
	Cidade, SUM(Total) AS [FATURAMENTO TOTAL]
FROM Dados
GROUP BY Cidade
HAVING SUM(Total) > 20000
ORDER BY 2;


--Subtotais
SELECT 
	Cidade, SUM(Total) AS [FATURAMENTO TOTAL]
FROM Dados
GROUP BY Cidade
WITH ROLLUP;


SELECT 
	Cidade,Produto, SUM(Total) AS [FATURAMENTO TOTAL]
FROM Dados
GROUP BY Cidade, Produto
WITH ROLLUP;



SELECT 
	Cidade,Produto, SUM(Total) AS [FATURAMENTO TOTAL]
FROM Dados
GROUP BY Cidade, Produto
WITH CUBE;

-----------------------------------
USE SisDep;

--Agrupamento com junções
SELECT
	NomeFuncionario, COUNT(*) [Nº DE DEPENDENTES]
FROM Funcionario AS F INNER JOIN Dependente AS D
ON F.idMatricula = D.idMatricula
GROUP BY NomeFuncionario;