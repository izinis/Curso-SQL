/*

	NomeFun��o([Argumentos])

	LEN(Texto Pesquisado)

	LEFT(Texto Pesquisado,N� de caracteres)

	RIGHT(Texto Pesquisado,N� de caracteres)

	REPLACE(Texto Pesquisado,Texto Localizado,Texto Substitui��o)

	CHARINDEX(Texto Pesquisado,Texto Localizado,Posi��o Inicial)

	SUBSTRING(Texto Pesquisado,Posi��o Inicial,N� de Caracteres)

	RTRIM(Texto Pesquisado)

	LTRIM(Texto Pesquisado)

	UPPER(Texto Pesquisado)

	LOWER(Texto Pesquisado)

	REPLICATE(Texto a Repetir,Quantidade de Vezes)

	REVERSE(Texto a ser Invertido)
	
	STRING_SPLIT(Texto a ser separado,Caractere delimitador)

*/


USE SisDep;

SELECT
	NomeFuncionario,
	LEN(NomeFuncionario) AS [N� DE CARACTERES],
	idMatricula,
	LEFT(idMatricula,2) AS [ESQUERDA],
	RIGHT(idMatricula,1) AS [DIREITA],
	REPLACE(idMatricula,'10','20') AS [SUBSTITUIR],
	CHARINDEX('SILVA', NomeFuncionario, 1) AS [LOCALIZAR],
	SUBSTRING(NomeFuncionario, 1, CHARINDEX(' ', NomeFuncionario, 1)-1) AS [PRIMEIRO NOME]
FROM Funcionario;

SELECT RTRIM('IMPACTA                ');
SELECT LTRIM('                IMPACTA');
SELECT LTRIM(RTRIM('                IMPACTA                     '));


SELECT
	UPPER(NomeFuncionario) AS [MAI�SCULAS],
	LOWER(NomeFuncionario) AS [MIN�SCULAS]
FROM Funcionario;


SELECT REPLICATE('*-* | ',10);


SELECT REVERSE(SUBSTRING(REVERSE('Func�es Built-in String.sql'),5,255));


SELECT 
	idMatricula, 
	NomeFuncionario,
	IDDEPARTAMENTO,
	IDCARGO,
	CONCAT(idMatricula, idDepartamento, idCargo) AS [CONCATENA��O],
	idMatricula + idDepartamento + idCargo
FROM Funcionario;