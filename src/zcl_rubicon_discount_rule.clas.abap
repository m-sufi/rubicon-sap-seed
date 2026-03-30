CLASS zcl_rubicon_discount_rule DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS evaluate_discount
      IMPORTING
        iv_customer_group TYPE string
        iv_amount         TYPE i
      RETURNING
        VALUE(rv_discount) TYPE i.
ENDCLASS.

CLASS zcl_rubicon_discount_rule IMPLEMENTATION.
  METHOD evaluate_discount.
    IF iv_customer_group = 'VIP'.
      rv_discount = 20.
    ELSEIF iv_amount > 5000.
      rv_discount = 10.
    ELSE.
      rv_discount = 0.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

