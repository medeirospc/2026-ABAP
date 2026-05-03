REPORT z_modulo5_ex7.

* Insira uma nova linha na tabela SCARR usando o MODIFY.

DATA: lt_scarr TYPE TABLE OF scarr,
	  ls_scarr TYPE scarr.
	  
* Limpando a ls (local structure) e setando valores.
CLEAR ls_scarr.
ls_scarr-carrid = 'Z1'.
ls_scarr-carrname = 'VNAction linhas aéreas'.
ls_scarr-currcode = 'BRL'.
ls_scarr-url = 'vnaction.com.br'.
MODIFY scarr FROM ls_scarr.

* Selecionando registros do banco e gravando na tabela interna.
SELECT *
	FROM scarr
	INTO TABLE lt_scarr	
	WHERE carrid = 'Z1'.

* Imprimindo na tela
LOOP AT lt_scarr INTO ls_scarr.
	WRITE: 'A nova companhia inserida é a ' , ls_scarr-carrid , '-' , ls_scarr-carrname.
	SKIP.
ENDLOOP.