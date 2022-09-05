USE Sisdep;

--Bonus de 100 reais para todos os funcionários
UPDATE Funcionario
SET salario = salario + 100;



--Reajuste de 10% para todos os funcionários
UPDATE Funcionario
--SET Salario = Salario * 0.1 + Salario
--SET Salario = Salario * 1.1
--Operador Composto
SET Salario *= 1.1;


--Atualização de mais de uma coluna simultaneamente
--Coma aplicação de filtros
UPDATE Funcionario
SET Salario = Salario * 1.05, idCargo = 2
WHERE idMatricula = 1000;


