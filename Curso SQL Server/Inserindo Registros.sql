USE Concessionaria;


EXEC sp_help tblMarcas;

--Insert Posicional
INSERT INTO tblMarcas
VALUES('FIAT');


--INSERÇÃO DE VÁRIAS LINHAS
INSERT INTO tblMarcas
VALUES
('FORD'),('CHEVROLET'),('VOLKSWAGEN'),('HONDA');


--Data Visualization
SELECT * FROM tblMarcas;

-- Insert Declarativo (Passa a coluna antes da inserção)
INSERT INTO tblModelos
(idMarca, nomeModelo)
VALUES
(4,'Onix'),(1,'Uno'),(3,'Eco Sport');


SELECT * FROM tblModelos;

INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1,'2017-01-05',45000);


--Erro devido ao constraint check que foi criado relacionado ao valor mínimo
INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1,'2017-01-05',2000);


