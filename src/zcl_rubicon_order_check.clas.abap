CLASS zcl_rubicon_order_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS run_check
      RETURNING VALUE(rv_result) TYPE string.
ENDCLASS.

CLASS zcl_rubicon_order_check IMPLEMENTATION.
  METHOD run_check.
    DATA(lo_rule) = NEW zcl_rubicon_tax_rule( ).
    DATA(lo_discount) = NEW zcl_rubicon_discount_rule( ).
    DATA(lv_discount) = lo_discount->evaluate_discount(
      iv_customer_group = 'VIP'
      iv_amount         = 12000 ).

    rv_result = lo_rule->zif_rubicon_rule~evaluate(
      iv_country = 'US'
      iv_amount  = 12000 ).

    IF lv_discount > 0.
      rv_result = |{ rv_result }_DISC_{ lv_discount }|.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

