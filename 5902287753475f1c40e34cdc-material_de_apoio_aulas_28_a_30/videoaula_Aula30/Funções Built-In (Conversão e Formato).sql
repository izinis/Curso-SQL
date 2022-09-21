/*

	NomeFun��o([Argumentos])

	CAST(Valor Refer�ncia AS Tipo de Dado)

	CONVERT(Tipo de Dado,Valor Refer�ncia,Estilo)

	Onde Estilo ser� aplicado para datas e possui c�digos de 1 a 14 (Ano Sem S�culo)

	e 101 1 114 (Ano Com S�culo)

	FORMAT(Valor Refer�ncia,Formato,Cultura/Pa�s)

	EX:

	Format(Campo Monet�rio,'C','en-us')
	Format(Campo Monet�rio,'C','pt-br')

	Format(Campo Data,'d','pt-br')
	Format(Campo Data,'D','pt-br')
	Format(Campo Data,'dd - mm - yyyy','pt-br')

*/

USE SisDep;


SELECT
	NomeFuncionario,
	CAST(Admissao AS DATE) AS [Admissao]
FROM Funcionario;


EXEC sp_help Funcionario;


SELECT 'M�dia Final: ' + CAST(6.5 AS VARCHAR);


SELECT
	NomeFuncionario,
	CONVERT(VARCHAR,Admissao, 1) AS [C�DIGO 1],
	CONVERT(VARCHAR,Admissao, 2) AS [C�DIGO 2],
	CONVERT(VARCHAR,Admissao, 3) AS [C�DIGO 3],
	CONVERT(VARCHAR,Admissao, 101) AS [C�DIGO 101],
	CONVERT(VARCHAR,Admissao, 102) AS [C�DIGO 102],
	CONVERT(VARCHAR,Admissao, 103) AS [C�DIGO 103]
FROM Funcionario;


SELECT
	NomeFuncionario,
	FORMAT(Salario, 'C', 'EN-US') AS [FORMATO DOLAR],
	FORMAT(Salario, 'C', 'PT-BR') AS [FORMATO REAL],
	FORMAT(Admissao, 'd', 'PT-BR') AS [FORMATO DATA 1],
	FORMAT(Admissao, 'D', 'PT-BR') AS [FORMATO DATA 2],
	FORMAT(Admissao, 'dd - mm - yyy', 'PT-BR') AS [FORMATO DATA 3]
FROM Funcionario;