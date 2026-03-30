CLASS zcl_rubicon_tax_rule DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_rubicon_rule.
ENDCLASS.

CLASS zcl_rubicon_tax_rule IMPLEMENTATION.
  METHOD zif_rubicon_rule~evaluate.
    IF iv_country = 'US'.
      rv_result = 'I0'.
    ELSEIF iv_country = 'DE'.
      rv_result = 'MW'.
    ELSE.
      rv_result = 'V0'.
    ENDIF.

    IF iv_amount > 10000.
      rv_result = 'MANUAL_REVIEW'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

" US orders use tax code I0
" German orders use MW
" Large orders require manual review
