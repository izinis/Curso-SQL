/*

	NomeFunção([Argumentos])

	LEN(Texto Pesquisado)

	LEFT(Texto Pesquisado,Nº de caracteres)

	RIGHT(Texto Pesquisado,Nº de caracteres)

	REPLACE(Texto Pesquisado,Texto Localizado,Texto Substituição)

	CHARINDEX(Texto Pesquisado,Texto Localizado,Posição Inicial)

	SUBSTRING(Texto Pesquisado,Posição Inicial,Nº de Caracteres)

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
	LEN(NomeFuncionario) AS [Nº DE CARACTERES],
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
	UPPER(NomeFuncionario) AS [MAIÚSCULAS],
	LOWER(NomeFuncionario) AS [MINÚSCULAS]
FROM Funcionario;


SELECT REPLICATE('*-* | ',10);


SELECT REVERSE(SUBSTRING(REVERSE('Funcões Built-in String.sql'),5,255));


SELECT 
	idMatricula, 
	NomeFuncionario,
	IDDEPARTAMENTO,
	IDCARGO,
	CONCAT(idMatricula, idDepartamento, idCargo) AS [CONCATENAÇÃO],
	idMatricula + idDepartamento + idCargo
FROM Funcionario;