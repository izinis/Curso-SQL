--INTERSECT traz os registros que estão nas duas colunas

--EXCEPT traz registros que estão em uma coluna, mas não estão na outra

SELECT Clientes FROM Clientes2015
INTERSECT
SELECT Clientes FROM Clientes2016



SELECT Clientes FROM Clientes2015
EXCEPT
SELECT Clientes FROM Clientes2016


