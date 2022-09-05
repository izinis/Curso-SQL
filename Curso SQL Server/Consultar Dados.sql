USE SisDep;

-- TODAS AS COLUNAS DE UMA TABELA
SELECT * FROM Funcionario;

--SOMENTE ALGUMAS COLUNAS
SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao
FROM Funcionario;

--ORDENAÇÃO DE DADOS
SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
ORDER BY NomeFuncionario DESC;

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
ORDER BY Salario;

--ORDENAÇÃO POR MAIS DE UMA COLUNA
SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao
FROM Funcionario
ORDER BY idDepartamento ASC, Salario DESC;

--ORDENAR PELA POSIÇÃO DA COLUNA
SELECT * FROM Funcionario
ORDER BY 5 DESC;


--RANK TOP
SELECT TOP 20 idDepartamento, idMatricula, NomeFuncionario, Admissao
FROM Funcionario;

SELECT TOP 10 PERCENT idDepartamento, idMatricula, NomeFuncionario, Admissao
FROM Funcionario;

SELECT TOP 9 idDepartamento, idMatricula, NomeFuncionario, Admissao
FROM Funcionario
ORDER BY Salario DESC;


--COM VALORES IGUAIS (EMPATE)
SELECT TOP 9 WITH TIES idDepartamento, idMatricula, NomeFuncionario, Admissao
FROM Funcionario
ORDER BY Salario DESC;

SELECT TOP 5 WITH TIES idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
ORDER BY Admissao;