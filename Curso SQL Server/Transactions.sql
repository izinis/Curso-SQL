USE SeguroVeiculo;

SELECT * FROM Apolices;


--INICIAR UMA TRANSAÇÃO
BEGIN TRANSACTION

--VERIFICA RSE HÁ ALGUMA TRANSAÇÃO ATIVA
SELECT @@TRANCOUNT;

UPDATE Apolices
SET valorApolice = valorApolice + 1500;


-- CANCELAR UMA OPERAÇÃO
ROLLBACK TRANSACTION;


BEGIN TRAN
	UPDATE Apolices
	SET valorApolice = valorApolice + 1500
	WHERE nContrato = 1000;

--CONFIRMAR TRANSAÇÃO
COMMIT TRANSACTION;


USE SisDep;


BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario * 1.1
	OUTPUT
		deleted.idMatricula,
		deleted.nomeFuncionario,
		deleted.Salario AS [Salário Anterior],
		inserted.Salario AS [Novo Salário]
	WHERE Salario <= 3000


COMMIT;

