USE SeguroVeiculo;

SELECT * FROM Apolices;

--OPERADORES RELACIONAIS
SELECT * FROM Apolices
WHERE valorApolice >= 50000;


--OPERADORES LÓGICOS
SELECT * FROM Apolices
WHERE idSeguradora = 1 OR idSeguradora = 3;

SELECT * FROM Apolices
WHERE idSeguradora = 1 AND valorApolice >= 50000;


SELECT * FROM Apolices
WHERE NOT idCidade = 5;


SELECT * FROM Apolices
WHERE valorApolice >= 30000
ORDER BY valorApolice DESC;


--OPERADORES ARITIMÉTICOS
SELECT nContrato, valorApolice, valorApolice * 1.1 AS [Reajuste Anual]
FROM Apolices;


--OPERADORES COMPOSTOS
BEGIN TRAN
	UPDATE Apolices
	SET valorApolice *= 1.1;

COMMIT;

