﻿
CREATE PROCEDURE CADASTRA_OCORRENCIA
@CODIGO_OCORRENCIA INT,
@DESCRICAO VARCHAR(50),
@STATUS CHAR(10),
@DATA_CADASTRO DATETIME 
AS
	BEGIN
		INSERT INTO OCORRENCIA VALUES(@CODIGO_OCORRENCIA,@DESCRICAO,@STATUS,@DATA_CADASTRO)
	END

