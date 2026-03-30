INTERFACE zif_rubicon_rule
  PUBLIC.

  METHODS evaluate
    IMPORTING
      iv_country TYPE string
      iv_amount  TYPE i
    RETURNING
      VALUE(rv_result) TYPE string.

ENDINTERFACE.
