REPORT z_modulo5_ex3.

DATA: lt_scarr TYPE TABLE OF scarr,
      ls_scarr TYPE scarr.

SELECT *
  FROM scarr
  INTO TABLE lt_scarr
    WHERE carrid = 'AA'.


LOOP AT lt_scarr INTO ls_scarr.
  WRITE: 'A companhia escolhida é:', ls_scarr-carrid , '-' , ls_scarr-carrname.
ENDLOOP.