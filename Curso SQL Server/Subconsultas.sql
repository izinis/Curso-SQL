USE SisDep;

-- Nome dos funcion�rios que possuam depenentes

SELECT 
	F.NomeFuncionario
FROM Funcionario AS F
WHERE
	F.idMatricula IN (SELECT D.idmatricula FROM Dependente D);

	
-- Nome dos funcion�rios que N�O possuam depenentes
SELECT 
	F.NomeFuncionario
FROM Funcionario AS F
WHERE
	F.idMatricula NOT IN (SELECT D.idmatricula FROM Dependente D);

-- Retornar funcion�rios com sal�rios acima da m�dia salarial
SELECT AVG(SALARIO)
FROM Funcionario;


SELECT
	NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Salario > (SELECT AVG(SALARIO) FROM Funcionario)
ORDER BY Salario;
