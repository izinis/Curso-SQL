USE SisDep;

SELECT 
	idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Salario BETWEEN 1500 AND 3000;

SELECT 
	idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Admissao BETWEEN '2005-01-01 00:00:00.000' AND '2005-12-31 00:00:00.000';

EXEC SP_HELP FUNCIONARIO;

SELECT * FROM Funcionario;

SELECT * FROM Funcionario
WHERE ISDATE(Admissao) = 0;

------------------------------


SELECT 
	idDepartamento,idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE idDepartamento IN(1,3,5,6,10);


SELECT 
	idDepartamento,idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE idDepartamento NOT IN(1,7)
ORDER BY 1;


----------------------------------
--LIKE NÃO É RECOMENDADO USAR POR CONSUMIR O PROCESSADOR MAIS DO QUE O NECESSÁRIO

/*
	CARACTERES CORINGA
		
		% = 1 OU MAIS CARACTERE DESCONHECIDOS
		_ = SOMENTE 1 CARACTERE DESCONHECIDO

*/

SELECT 
	idDepartamento,idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE 'A%'
ORDER BY NomeFuncionario;


SELECT 
	idDepartamento,idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE 'A_A%'
ORDER BY NomeFuncionario;

SELECT 
	idDepartamento,idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE '%OLIVEIRA'
ORDER BY NomeFuncionario;

SELECT 
	idDepartamento,idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE '%SILVA%'
ORDER BY NomeFuncionario;


