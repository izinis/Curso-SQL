/*

	NomeFun��o([Argumentos])

	GETDATE()

	DAY(Data Refer�ncia)

	MONTH(Data Refer�ncia)

	YEAR(Data Refer�ncia)

	EMONTH(Data Refer�ncia,Quantidade de meses a adicionar)

	DATEFROMPARTS(Ano,M�s,Dia)

	DATEDIFF(Parte Data,Data Inicial,Data Final)

	DATEADD(Parte Data,valor a ser adicionado,Data Refer�ncia)

	DATENAME(Data Refer�ncia,Parte Data)

	onde Parte Data poder� ser:

		> YEAR		YYYY
		> QUARTER	Q
		> MONTH		M
		> WEEK		WW
		> DAY		D

*/

SELECT GETDATE();

USE SisDep;

SELECT
	NomeFuncionario, Admissao,
	DAY(Admissao) AS [DIA],
	MONTH(Admissao) AS [M�S],
	YEAR(Admissao) AS [ANO]
FROM Funcionario;



/*
	Retornar admitidos na 1� quinzena de qualquer do 2� semestre dos seguintes anos (2000,2003,2005,2008,2010)
*/

SELECT
	NomeFuncionario, Admissao,
	DAY(Admissao) AS [DIA],
	MONTH(Admissao) AS [M�S],
	YEAR(Admissao) AS [ANO]
FROM Funcionario
WHERE
	DAY(Admissao) <= 15 AND MONTH(Admissao) >= 7 AND
	YEAR(Admissao) IN(2000,2003,2005,2008,2010);



SELECT EOMONTH(GETDATE(),1);


SELECT DATEFROMPARTS(2017,1,10);

SELECT DATEDIFF(DAY, '1994/11/12', GETDATE()) AS [DIAS];
SELECT DATEDIFF(WEEK, '1994/11/12', GETDATE()) AS [SEMANAS];
SELECT DATEDIFF(MONTH, '1994/11/12', GETDATE()) AS [M�S];
SELECT DATEDIFF(QUARTER, '1994/11/12', GETDATE()) AS [QUARTER];
SELECT DATEDIFF(YEAR, '1994/11/12', GETDATE()) AS [ANOS];


SELECT DATEADD(DAY, 65, GETDATE()) AS [DIAS];
SELECT DATEADD(WEEK, 65, GETDATE()) AS [SEMANA];
SELECT DATEADD(MONTH, 65, GETDATE()) AS [MESES];
SELECT DATEADD(QUARTER, 65, GETDATE()) AS [QUARTER];
SELECT DATEADD(YEAR, 65, GETDATE()) AS [ANO];


SET LANGUAGE 'BRAZILIAN';


SELECT
	NomeFuncionario, Admissao,
	DATENAME(WEEKDAY, Admissao) AS [DIA DA SEMANA],
	DATENAME(MONTH, Admissao) AS [M�S]
FROM Funcionario;