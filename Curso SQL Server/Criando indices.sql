USE Concessionaria;

-- visualizar indices
EXEC SP_HELP tblEstoque;


-- Crian índice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

EXEC sp_helpindex tblEstoque;


DROP INDEX IX_tblEstoque
ON tblEstoque;