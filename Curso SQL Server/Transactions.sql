USE SeguroVeiculo;

SELECT * FROM Apolices;


--INICIAR UMA TRANSA��O
BEGIN TRANSACTION

--VERIFICA RSE H� ALGUMA TRANSA��O ATIVA
SELECT @@TRANCOUNT;

UPDATE Apolices
SET valorApolice = valorApolice + 1500;


-- CANCELAR UMA OPERA��O
ROLLBACK TRANSACTION;


BEGIN TRAN
	UPDATE Apolices
	SET valorApolice = valorApolice + 1500
	WHERE nContrato = 1000;

--CONFIRMAR TRANSA��O
COMMIT TRANSACTION;


USE SisDep;


BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario * 1.1
	OUTPUT
		deleted.idMatricula,
		deleted.nomeFuncionario,
		deleted.Salario AS [Sal�rio Anterior],
		inserted.Salario AS [Novo Sal�rio]
	WHERE Salario <= 3000


COMMIT;

