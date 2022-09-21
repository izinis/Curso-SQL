/*

	NomeFunção([Argumentos])

	GETDATE()

	DAY(Data Referência)

	MONTH(Data Referência)

	YEAR(Data Referência)

	EMONTH(Data Referência,Quantidade de meses a adicionar)

	DATEFROMPARTS(Ano,Mês,Dia)

	DATEDIFF(Parte Data,Data Inicial,Data Final)

	DATEADD(Parte Data,valor a ser adicionado,Data Referência)

	DATENAME(Data Referência,Parte Data)

	onde Parte Data poderá ser:

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
	MONTH(Admissao) AS [MÊS],
	YEAR(Admissao) AS [ANO]
FROM Funcionario;



/*
	Retornar admitidos na 1ª quinzena de qualquer do 2º semestre dos seguintes anos (2000,2003,2005,2008,2010)
*/

SELECT
	NomeFuncionario, Admissao,
	DAY(Admissao) AS [DIA],
	MONTH(Admissao) AS [MÊS],
	YEAR(Admissao) AS [ANO]
FROM Funcionario
WHERE
	DAY(Admissao) <= 15 AND MONTH(Admissao) >= 7 AND
	YEAR(Admissao) IN(2000,2003,2005,2008,2010);



SELECT EOMONTH(GETDATE(),1);


SELECT DATEFROMPARTS(2017,1,10);

SELECT DATEDIFF(DAY, '1994/11/12', GETDATE()) AS [DIAS];
SELECT DATEDIFF(WEEK, '1994/11/12', GETDATE()) AS [SEMANAS];
SELECT DATEDIFF(MONTH, '1994/11/12', GETDATE()) AS [MÊS];
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
	DATENAME(MONTH, Admissao) AS [MÊS]
FROM Funcionario;