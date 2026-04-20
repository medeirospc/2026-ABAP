*&---------------------------------------------------------------------*
*& Report Z_MODULO5_EX6
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

* INSERT (Insere na última linha, usar quando tem certeza que o registro
* não existe, senão duplica)

REPORT Z_MODULO5_EX6.

DATA: lt_scarr TYPE TABLE OF scarr,
      ls_scarr TYPE scarr.

ls_scarr-carrid = 'Z2'.
ls_scarr-carrname = 'Gol linhas áreas'.
ls_scarr-currcode = 'BRL'.
ls_scarr-url = 'http://www.vnaction.com.br'.
INSERT scarr FROM ls_scarr.

SELECT *
  FROM scarr
  INTO TABLE lt_scarr
  WHERE carrid = 'Z2'.