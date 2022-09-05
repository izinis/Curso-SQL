USE Consorcio;


--Visualizar dados
SELECT * FROM Carteiras;

--Excluindo registros
DELETE FROM Carteiras
WHERE Cpf = 74632202244;

DELETE FROM Carteiras
WHERE Uf = 'GO';


USE SisDep;

--Exclusão bem sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1001;

--Exclusão mal sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1000;

SELECT * FROM Dependente
WHERE idMatricula = 1000;



