--INTERSECT traz os registros que est�o nas duas colunas

--EXCEPT traz registros que est�o em uma coluna, mas n�o est�o na outra

SELECT Clientes FROM Clientes2015
INTERSECT
SELECT Clientes FROM Clientes2016



SELECT Clientes FROM Clientes2015
EXCEPT
SELECT Clientes FROM Clientes2016


