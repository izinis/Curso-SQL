USE SisDep;

SELECT
	NomeFuncionario, Admissao, Salario,UF, Cidade
FROM Funcionario INNER JOIN	Localidade
ON Funcionario.idLocalidade = Localidade.idLocalidade;


SELECT
	NomeFuncionario, NomeDepartamento ,Admissao, Salario,UF, Cidade
FROM Funcionario INNER JOIN	Localidade
ON Funcionario.idLocalidade = Localidade.idLocalidade
INNER JOIN Depto
ON Depto.idDepartamento = Funcionario.idDepartamento;

--NOMES QUALIFICADOS

SELECT
	Funcionario.NomeFuncionario,
	Dependente.NascimentoDependente,
	Dependente.NascimentoDependente
FROM Funcionario INNER JOIN Dependente
ON Dependente.idMatricula = Funcionario.idMatricula
ORDER BY Funcionario.NomeFuncionario;


--RÓTULOS OU ALIAS
SELECT
	F.NomeFuncionario,
	D.NascimentoDependente,
	D.NascimentoDependente
FROM Funcionario AS F INNER JOIN Dependente AS D
ON D.idMatricula = F.idMatricula
ORDER BY F.NomeFuncionario;


SELECT * FROM Funcionario;