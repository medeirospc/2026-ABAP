REPORT z_modulo5_ex2.

DATA: lt_scarr TYPE TABLE OF scarr,
	  ls_scarr TYPE scarr.
	  
	SELECT *
		FROM scarr
		INTO TABLE lt_scarr.
		
	LOOP AT lt_scarr INTO ls_scarr.
		WRITE: ls_scarr-carrid,
			   ls_scarr-carrname.
		SKIP.
	ENDLOOP.
