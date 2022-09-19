USE SisDep;

-- Nome dos funcionários que possuam depenentes

SELECT 
	F.NomeFuncionario
FROM Funcionario AS F
WHERE
	F.idMatricula IN (SELECT D.idmatricula FROM Dependente D);

	
-- Nome dos funcionários que NÃO possuam depenentes
SELECT 
	F.NomeFuncionario
FROM Funcionario AS F
WHERE
	F.idMatricula NOT IN (SELECT D.idmatricula FROM Dependente D);

-- Retornar funcionários com salários acima da média salarial
SELECT AVG(SALARIO)
FROM Funcionario;


SELECT
	NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Salario > (SELECT AVG(SALARIO) FROM Funcionario)
ORDER BY Salario;
