REPORT z_modulo5_ex4.

TYPES: BEGIN OF ly_type1,
         country   TYPE spfli-countryfr,
         cityfrom  TYPE spfli-cityfrom,
         airpfrom  TYPE spfli-airpfrom,
         name      TYPE sairport-name,
         countryto TYPE spfli-countryto,
         cityto    TYPE spfli-cityto,
         airpto    TYPE spfli-airpto,
       END OF ly_type1.

DATA lt_result TYPE STANDARD TABLE OF ly_type1.
DATA ls_result TYPE ly_type1.

START-OF-SELECTION.

*Apenas JOIN o ABAP considera como INNER JOIN
SELECT countryfr cityfrom airpfrom name countryto cityto airpto
  FROM spfli
  INNER JOIN sairport ON sairport~id = spfli~airpfrom
  INTO CORRESPONDING FIELDS OF TABLE lt_result.

  LOOP AT lt_result INTO ls_result.
    WRITE: ls_result.
 ENDLOOP.